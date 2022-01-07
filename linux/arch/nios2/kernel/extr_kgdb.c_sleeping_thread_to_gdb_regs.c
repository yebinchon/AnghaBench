
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* kregs; } ;
struct task_struct {TYPE_2__ thread; } ;
struct TYPE_3__ {unsigned long sp; unsigned long ea; } ;


 size_t GDB_PC ;
 size_t GDB_SP ;
 int NUMREGBYTES ;
 int memset (char*,int ,int ) ;

void sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *p)
{
 memset((char *)gdb_regs, 0, NUMREGBYTES);
 gdb_regs[GDB_SP] = p->thread.kregs->sp;
 gdb_regs[GDB_PC] = p->thread.kregs->ea;
}
