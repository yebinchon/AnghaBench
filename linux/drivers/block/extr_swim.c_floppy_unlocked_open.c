
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;


 int floppy_open (struct block_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int swim_mutex ;

__attribute__((used)) static int floppy_unlocked_open(struct block_device *bdev, fmode_t mode)
{
 int ret;

 mutex_lock(&swim_mutex);
 ret = floppy_open(bdev, mode);
 mutex_unlock(&swim_mutex);

 return ret;
}
