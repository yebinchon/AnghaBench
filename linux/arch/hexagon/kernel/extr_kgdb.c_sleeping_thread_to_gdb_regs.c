
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {unsigned long r00; } ;


 int NUMREGBYTES ;
 int memset (unsigned long*,int ,int ) ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;

void sleeping_thread_to_gdb_regs(unsigned long *gdb_regs,
     struct task_struct *task)
{
 struct pt_regs *thread_regs;

 if (task == ((void*)0))
  return;


 memset(gdb_regs, 0, NUMREGBYTES);


 thread_regs = task_pt_regs(task);
 gdb_regs[0] = thread_regs->r00;
}
