timestamp=`date +%s`
datetime=`date -d @$timestamp +"%Y-%m-%d-%H:%M:%S"`
#net=AlexNet
#net=VGG16
#net=InceptionV3
net=ResNet50
data_dir=/var/www/attribute-aware-attention/data/
gpu_id=1
THEANO_FLAGS='device=gpu'$gpu_id',floatX=float32,lib.cnmem=0.6' python3 cub_demo.py $net $data_dir | tee "./log/"$net"-"$datetime".log.txt"


