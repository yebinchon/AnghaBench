
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;






 int EINVAL ;
 int PR_SPEC_DISABLE ;
 int PR_SPEC_ENABLE ;
 int PR_SPEC_FORCE_DISABLE ;
 int PR_SPEC_NOT_AFFECTED ;
 int PR_SPEC_PRCTL ;
 int arm64_get_ssbd_state () ;
 int task_spec_ssb_disable (struct task_struct*) ;
 int task_spec_ssb_force_disable (struct task_struct*) ;

__attribute__((used)) static int ssbd_prctl_get(struct task_struct *task)
{
 switch (arm64_get_ssbd_state()) {
 case 128:
  return -EINVAL;
 case 130:
  return PR_SPEC_DISABLE;
 case 129:
  if (task_spec_ssb_force_disable(task))
   return PR_SPEC_PRCTL | PR_SPEC_FORCE_DISABLE;
  if (task_spec_ssb_disable(task))
   return PR_SPEC_PRCTL | PR_SPEC_DISABLE;
  return PR_SPEC_PRCTL | PR_SPEC_ENABLE;
 case 131:
  return PR_SPEC_ENABLE;
 default:
  return PR_SPEC_NOT_AFFECTED;
 }
}
