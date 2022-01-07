
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int ENODEV ;

 int ssbd_prctl_get (struct task_struct*) ;

int arch_prctl_spec_ctrl_get(struct task_struct *task, unsigned long which)
{
 switch (which) {
 case 128:
  return ssbd_prctl_get(task);
 default:
  return -ENODEV;
 }
}
