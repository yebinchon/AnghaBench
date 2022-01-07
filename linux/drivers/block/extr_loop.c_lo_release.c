
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_flags; scalar_t__ lo_state; int lo_queue; int lo_refcnt; } ;
struct gendisk {struct loop_device* private_data; } ;
typedef int fmode_t ;


 int LO_FLAGS_AUTOCLEAR ;
 scalar_t__ Lo_bound ;
 scalar_t__ Lo_rundown ;
 int __loop_clr_fd (struct loop_device*,int) ;
 scalar_t__ atomic_dec_return (int *) ;
 int blk_mq_freeze_queue (int ) ;
 int blk_mq_unfreeze_queue (int ) ;
 int loop_ctl_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void lo_release(struct gendisk *disk, fmode_t mode)
{
 struct loop_device *lo;

 mutex_lock(&loop_ctl_mutex);
 lo = disk->private_data;
 if (atomic_dec_return(&lo->lo_refcnt))
  goto out_unlock;

 if (lo->lo_flags & LO_FLAGS_AUTOCLEAR) {
  if (lo->lo_state != Lo_bound)
   goto out_unlock;
  lo->lo_state = Lo_rundown;
  mutex_unlock(&loop_ctl_mutex);




  __loop_clr_fd(lo, 1);
  return;
 } else if (lo->lo_state == Lo_bound) {




  blk_mq_freeze_queue(lo->lo_queue);
  blk_mq_unfreeze_queue(lo->lo_queue);
 }

out_unlock:
 mutex_unlock(&loop_ctl_mutex);
}
