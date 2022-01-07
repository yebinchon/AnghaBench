
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sp; unsigned long pc; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {unsigned long* regs; unsigned long pr; unsigned long gbr; } ;


 int DBG_MAX_REG_NUM ;
 size_t GDB_GBR ;
 size_t GDB_PC ;
 size_t GDB_PR ;
 int GDB_R15 ;
 int GDB_R8 ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;

void sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *p)
{
 struct pt_regs *thread_regs = task_pt_regs(p);
 int reg;


 for (reg = 0; reg < DBG_MAX_REG_NUM; reg++)
  gdb_regs[reg] = 0;
 for (reg = GDB_R8; reg < GDB_R15; reg++)
  gdb_regs[reg] = thread_regs->regs[reg];

 gdb_regs[GDB_R15] = p->thread.sp;
 gdb_regs[GDB_PC] = p->thread.pc;




 gdb_regs[GDB_PR] = thread_regs->pr;
 gdb_regs[GDB_GBR] = thread_regs->gbr;
}
