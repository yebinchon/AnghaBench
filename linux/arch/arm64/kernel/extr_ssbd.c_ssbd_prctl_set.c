
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int ARM64_SSBD_FORCE_DISABLE ;
 int ARM64_SSBD_FORCE_ENABLE ;
 int ARM64_SSBD_MITIGATED ;
 int ARM64_SSBD_UNKNOWN ;
 int EINVAL ;
 int EPERM ;
 int ERANGE ;



 int TIF_SSBD ;
 int arm64_get_ssbd_state () ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 int ssbd_ssbs_disable (struct task_struct*) ;
 int ssbd_ssbs_enable (struct task_struct*) ;
 int task_clear_spec_ssb_disable (struct task_struct*) ;
 int task_set_spec_ssb_disable (struct task_struct*) ;
 int task_set_spec_ssb_force_disable (struct task_struct*) ;
 int task_spec_ssb_force_disable (struct task_struct*) ;

__attribute__((used)) static int ssbd_prctl_set(struct task_struct *task, unsigned long ctrl)
{
 int state = arm64_get_ssbd_state();


 if (state == ARM64_SSBD_UNKNOWN)
  return -EINVAL;


 if (state == ARM64_SSBD_MITIGATED) {
  switch (ctrl) {
  case 129:
   return -EPERM;
  case 130:
  case 128:
   return 0;
  }
 }






 switch (ctrl) {
 case 129:

  if (state == ARM64_SSBD_FORCE_ENABLE ||
      task_spec_ssb_force_disable(task))
   return -EPERM;
  task_clear_spec_ssb_disable(task);
  clear_tsk_thread_flag(task, TIF_SSBD);
  ssbd_ssbs_enable(task);
  break;
 case 130:
  if (state == ARM64_SSBD_FORCE_DISABLE)
   return -EPERM;
  task_set_spec_ssb_disable(task);
  set_tsk_thread_flag(task, TIF_SSBD);
  ssbd_ssbs_disable(task);
  break;
 case 128:
  if (state == ARM64_SSBD_FORCE_DISABLE)
   return -EPERM;
  task_set_spec_ssb_disable(task);
  task_set_spec_ssb_force_disable(task);
  set_tsk_thread_flag(task, TIF_SSBD);
  ssbd_ssbs_disable(task);
  break;
 default:
  return -ERANGE;
 }

 return 0;
}
