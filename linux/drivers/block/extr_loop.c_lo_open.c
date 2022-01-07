
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loop_device {int lo_refcnt; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct loop_device* private_data; } ;


 int ENXIO ;
 int atomic_inc (int *) ;
 int loop_ctl_mutex ;
 int mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lo_open(struct block_device *bdev, fmode_t mode)
{
 struct loop_device *lo;
 int err;

 err = mutex_lock_killable(&loop_ctl_mutex);
 if (err)
  return err;
 lo = bdev->bd_disk->private_data;
 if (!lo) {
  err = -ENXIO;
  goto out;
 }

 atomic_inc(&lo->lo_refcnt);
out:
 mutex_unlock(&loop_ctl_mutex);
 return err;
}
