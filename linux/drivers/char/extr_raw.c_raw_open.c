
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_mode; struct block_device* private_data; int f_mapping; int f_flags; int * f_op; } ;
struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_6__ {int i_mapping; } ;
struct TYPE_5__ {int inuse; struct block_device* binding; } ;
struct TYPE_4__ {int i_mapping; } ;


 int ENODEV ;
 int FMODE_EXCL ;
 int O_DIRECT ;
 int bdev_logical_block_size (struct block_device*) ;
 int bdgrab (struct block_device*) ;
 int blkdev_get (struct block_device*,int,int (*) (struct inode*,struct file*)) ;
 int blkdev_put (struct block_device*,int) ;
 TYPE_3__* file_inode (struct file*) ;
 int iminor (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int raw_ctl_fops ;
 TYPE_2__* raw_devices ;
 int raw_mutex ;
 int set_blocksize (struct block_device*,int ) ;

__attribute__((used)) static int raw_open(struct inode *inode, struct file *filp)
{
 const int minor = iminor(inode);
 struct block_device *bdev;
 int err;

 if (minor == 0) {
  filp->f_op = &raw_ctl_fops;
  return 0;
 }

 mutex_lock(&raw_mutex);




 bdev = raw_devices[minor].binding;
 err = -ENODEV;
 if (!bdev)
  goto out;
 bdgrab(bdev);
 err = blkdev_get(bdev, filp->f_mode | FMODE_EXCL, raw_open);
 if (err)
  goto out;
 err = set_blocksize(bdev, bdev_logical_block_size(bdev));
 if (err)
  goto out1;
 filp->f_flags |= O_DIRECT;
 filp->f_mapping = bdev->bd_inode->i_mapping;
 if (++raw_devices[minor].inuse == 1)
  file_inode(filp)->i_mapping =
   bdev->bd_inode->i_mapping;
 filp->private_data = bdev;
 mutex_unlock(&raw_mutex);
 return 0;

out1:
 blkdev_put(bdev, filp->f_mode | FMODE_EXCL);
out:
 mutex_unlock(&raw_mutex);
 return err;
}
