
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int user_disable_single_step (struct task_struct*) ;

void ptrace_disable(struct task_struct *child)
{





 user_disable_single_step(child);
}
