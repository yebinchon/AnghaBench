
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_device {struct nbd_config* config; } ;
struct nbd_config {unsigned long bytesize; unsigned long blksize; unsigned long flags; } ;
struct block_device {int dummy; } ;


 int EINVAL ;
 int ENOTTY ;


 unsigned long NBD_DEF_BLKSIZE ;
 unsigned long div_s64 (unsigned long,unsigned long) ;
 int nbd_add_socket (struct nbd_device*,unsigned long,int) ;
 int nbd_clear_sock_ioctl (struct nbd_device*,struct block_device*) ;
 int nbd_disconnect (struct nbd_device*) ;
 int nbd_is_valid_blksize (unsigned long) ;
 int nbd_set_cmd_timeout (struct nbd_device*,unsigned long) ;
 int nbd_size_set (struct nbd_device*,unsigned long,unsigned long) ;
 int nbd_start_device_ioctl (struct nbd_device*,struct block_device*) ;

__attribute__((used)) static int __nbd_ioctl(struct block_device *bdev, struct nbd_device *nbd,
         unsigned int cmd, unsigned long arg)
{
 struct nbd_config *config = nbd->config;

 switch (cmd) {
 case 136:
  return nbd_disconnect(nbd);
 case 137:
  nbd_clear_sock_ioctl(nbd, bdev);
  return 0;
 case 129:
  return nbd_add_socket(nbd, arg, 0);
 case 133:
  if (!arg)
   arg = NBD_DEF_BLKSIZE;
  if (!nbd_is_valid_blksize(arg))
   return -EINVAL;
  nbd_size_set(nbd, arg,
        div_s64(config->bytesize, arg));
  return 0;
 case 131:
  nbd_size_set(nbd, config->blksize,
        div_s64(arg, config->blksize));
  return 0;
 case 130:
  nbd_size_set(nbd, config->blksize, arg);
  return 0;
 case 128:
  nbd_set_cmd_timeout(nbd, arg);
  return 0;

 case 132:
  config->flags = arg;
  return 0;
 case 135:
  return nbd_start_device_ioctl(nbd, bdev);
 case 138:




  return 0;
 case 134:




  return 0;
 }
 return -ENOTTY;
}
