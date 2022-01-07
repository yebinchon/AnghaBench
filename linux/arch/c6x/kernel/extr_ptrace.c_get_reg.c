
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PT_CSR ;
 int PT_TSR ;
 scalar_t__ task_pt_regs (struct task_struct*) ;

__attribute__((used)) static inline long get_reg(struct task_struct *task, int regno)
{
 long *addr = (long *)task_pt_regs(task);

 if (regno == PT_TSR || regno == PT_CSR)
  return 0;

 return addr[regno];
}
