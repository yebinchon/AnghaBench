
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int singlestep_disable (struct task_struct*) ;

void ptrace_disable(struct task_struct *child)
{
 singlestep_disable(child);
}
