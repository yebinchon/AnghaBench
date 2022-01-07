
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;


 int floppy_locked_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int swim3_mutex ;

__attribute__((used)) static int floppy_ioctl(struct block_device *bdev, fmode_t mode,
     unsigned int cmd, unsigned long param)
{
 int ret;

 mutex_lock(&swim3_mutex);
 ret = floppy_locked_ioctl(bdev, mode, cmd, param);
 mutex_unlock(&swim3_mutex);

 return ret;
}
