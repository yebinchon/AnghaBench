
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int ENODEV ;

 int ssbd_prctl_set (struct task_struct*,unsigned long) ;

int arch_prctl_spec_ctrl_set(struct task_struct *task, unsigned long which,
        unsigned long ctrl)
{
 switch (which) {
 case 128:
  return ssbd_prctl_set(task, ctrl);
 default:
  return -ENODEV;
 }
}
