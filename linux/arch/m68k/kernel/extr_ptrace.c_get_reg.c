
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long usp; scalar_t__ esp0; } ;
struct task_struct {TYPE_1__ thread; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int PT_PC ;
 scalar_t__ PT_REG (int ) ;
 int PT_SR ;
 int PT_USP ;
 scalar_t__* regoff ;
 long stkadj ;

__attribute__((used)) static inline long get_reg(struct task_struct *task, int regno)
{
 unsigned long *addr;

 if (regno == PT_USP)
  addr = &task->thread.usp;
 else if (regno < ARRAY_SIZE(regoff))
  addr = (unsigned long *)(task->thread.esp0 + regoff[regno]);
 else
  return 0;

 if (regno == PT_SR || regno == PT_PC) {
  long stkadj = *(long *)(task->thread.esp0 + PT_REG(stkadj));
  addr = (unsigned long *) ((unsigned long)addr + stkadj);

  if (regno == PT_SR)
   return *(unsigned short *)addr;
 }
 return *addr;
}
