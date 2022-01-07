
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {scalar_t__ lo_state; int lo_flags; int lo_refcnt; } ;


 int ENXIO ;
 int LO_FLAGS_AUTOCLEAR ;
 scalar_t__ Lo_bound ;
 scalar_t__ Lo_rundown ;
 int __loop_clr_fd (struct loop_device*,int) ;
 int atomic_read (int *) ;
 int loop_ctl_mutex ;
 int mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int loop_clr_fd(struct loop_device *lo)
{
 int err;

 err = mutex_lock_killable(&loop_ctl_mutex);
 if (err)
  return err;
 if (lo->lo_state != Lo_bound) {
  mutex_unlock(&loop_ctl_mutex);
  return -ENXIO;
 }
 if (atomic_read(&lo->lo_refcnt) > 1) {
  lo->lo_flags |= LO_FLAGS_AUTOCLEAR;
  mutex_unlock(&loop_ctl_mutex);
  return 0;
 }
 lo->lo_state = Lo_rundown;
 mutex_unlock(&loop_ctl_mutex);

 return __loop_clr_fd(lo, 0);
}
