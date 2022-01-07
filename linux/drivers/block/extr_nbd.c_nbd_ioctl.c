
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nbd_device {int config_lock; struct nbd_config* config; } ;
struct nbd_config {int runtime_flags; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct nbd_device* private_data; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 unsigned int NBD_CLEAR_SOCK ;
 unsigned int NBD_DISCONNECT ;
 int NBD_RT_BOUND ;
 int _IOC_TYPE (unsigned int) ;
 int __nbd_ioctl (struct block_device*,struct nbd_device*,unsigned int,unsigned long) ;
 int capable (int ) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nbd_to_dev (struct nbd_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int nbd_ioctl(struct block_device *bdev, fmode_t mode,
       unsigned int cmd, unsigned long arg)
{
 struct nbd_device *nbd = bdev->bd_disk->private_data;
 struct nbd_config *config = nbd->config;
 int error = -EINVAL;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;




 if (_IOC_TYPE(cmd) != 0xab)
  return -EINVAL;

 mutex_lock(&nbd->config_lock);




 if (!test_bit(NBD_RT_BOUND, &config->runtime_flags) ||
     (cmd == NBD_DISCONNECT || cmd == NBD_CLEAR_SOCK))
  error = __nbd_ioctl(bdev, nbd, cmd, arg);
 else
  dev_err(nbd_to_dev(nbd), "Cannot use ioctl interface on a netlink controlled device.\n");
 mutex_unlock(&nbd->config_lock);
 return error;
}
