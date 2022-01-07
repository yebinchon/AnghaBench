
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * regs; } ;
struct task_struct {TYPE_1__ thread; } ;


 int EIO ;
 int PT_DSCR ;
 int PT_MAX_PUT_REG ;
 int PT_MSR ;
 int PT_TRAP ;
 int array_index_nospec (int,int) ;
 int set_user_dscr (struct task_struct*,unsigned long) ;
 int set_user_msr (struct task_struct*,unsigned long) ;
 int set_user_trap (struct task_struct*,unsigned long) ;

int ptrace_put_reg(struct task_struct *task, int regno, unsigned long data)
{
 if (task->thread.regs == ((void*)0))
  return -EIO;

 if (regno == PT_MSR)
  return set_user_msr(task, data);
 if (regno == PT_TRAP)
  return set_user_trap(task, data);
 if (regno == PT_DSCR)
  return set_user_dscr(task, data);

 if (regno <= PT_MAX_PUT_REG) {
  regno = array_index_nospec(regno, PT_MAX_PUT_REG + 1);
  ((unsigned long *)task->thread.regs)[regno] = data;
  return 0;
 }
 return -EIO;
}
