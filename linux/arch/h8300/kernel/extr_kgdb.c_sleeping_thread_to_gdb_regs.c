
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ksp; } ;
struct task_struct {TYPE_1__ thread; } ;


 size_t GDB_PC ;
 size_t GDB_SP ;
 unsigned long KSTK_EIP (struct task_struct*) ;
 int NUMREGBYTES ;
 int memset (char*,int ,int ) ;

void sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *p)
{
 memset((char *)gdb_regs, 0, NUMREGBYTES);
 gdb_regs[GDB_SP] = p->thread.ksp;
 gdb_regs[GDB_PC] = KSTK_EIP(p);
}
