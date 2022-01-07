
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct file {struct apm_user* private_data; } ;
struct apm_user {int suspend_result; int suspend_state; int writer; int suser; } ;



 int EINTR ;
 int EINVAL ;
 long EPERM ;
 int ETIMEDOUT ;
 int PM_SUSPEND_MEM ;
 int SUSPEND_ACKED ;

 int SUSPEND_NONE ;

 int SUSPEND_WAIT ;
 int apm_suspend_waitqueue ;
 int atomic_dec (int *) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_suspend (int ) ;
 int state_lock ;
 int suspend_acks_pending ;
 int wait_event_freezable (int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static long
apm_ioctl(struct file *filp, u_int cmd, u_long arg)
{
 struct apm_user *as = filp->private_data;
 int err = -EINVAL;

 if (!as->suser || !as->writer)
  return -EPERM;

 switch (cmd) {
 case 130:
  mutex_lock(&state_lock);

  as->suspend_result = -EINTR;

  switch (as->suspend_state) {
  case 128:





   as->suspend_state = SUSPEND_ACKED;
   atomic_dec(&suspend_acks_pending);
   mutex_unlock(&state_lock);





   wake_up(&apm_suspend_waitqueue);
   while (wait_event_freezable(apm_suspend_waitqueue,
     as->suspend_state != SUSPEND_ACKED))
    msleep(10);
   break;
  case 129:
   as->suspend_result = -ETIMEDOUT;
   mutex_unlock(&state_lock);
   break;
  default:
   as->suspend_state = SUSPEND_WAIT;
   mutex_unlock(&state_lock);






   as->suspend_result = pm_suspend(PM_SUSPEND_MEM);
  }

  mutex_lock(&state_lock);
  err = as->suspend_result;
  as->suspend_state = SUSPEND_NONE;
  mutex_unlock(&state_lock);
  break;
 }

 return err;
}
