
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_pt_regs {int dummy; } ;
struct TYPE_2__ {int * regs; } ;
struct task_struct {TYPE_1__ thread; } ;


 int EIO ;
 int PT_DSCR ;
 int PT_MSR ;
 int PT_SOFTE ;
 int array_index_nospec (int,unsigned int) ;
 int get_user_dscr (struct task_struct*,unsigned long*) ;
 unsigned long get_user_msr (struct task_struct*) ;

int ptrace_get_reg(struct task_struct *task, int regno, unsigned long *data)
{
 unsigned int regs_max;

 if ((task->thread.regs == ((void*)0)) || !data)
  return -EIO;

 if (regno == PT_MSR) {
  *data = get_user_msr(task);
  return 0;
 }

 if (regno == PT_DSCR)
  return get_user_dscr(task, data);
 regs_max = sizeof(struct user_pt_regs) / sizeof(unsigned long);
 if (regno < regs_max) {
  regno = array_index_nospec(regno, regs_max);
  *data = ((unsigned long *)task->thread.regs)[regno];
  return 0;
 }

 return -EIO;
}
