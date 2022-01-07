
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_data; int * i_mapping; } ;
struct file {int f_mode; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ inuse; struct block_device* binding; } ;


 int FMODE_EXCL ;
 int blkdev_put (struct block_device*,int) ;
 int iminor (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* raw_devices ;
 int raw_mutex ;

__attribute__((used)) static int raw_release(struct inode *inode, struct file *filp)
{
 const int minor= iminor(inode);
 struct block_device *bdev;

 mutex_lock(&raw_mutex);
 bdev = raw_devices[minor].binding;
 if (--raw_devices[minor].inuse == 0)

  inode->i_mapping = &inode->i_data;
 mutex_unlock(&raw_mutex);

 blkdev_put(bdev, filp->f_mode | FMODE_EXCL);
 return 0;
}
