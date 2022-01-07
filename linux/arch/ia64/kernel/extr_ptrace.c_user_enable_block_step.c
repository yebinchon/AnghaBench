
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct ia64_psr {int tb; } ;


 int TIF_SINGLESTEP ;
 struct ia64_psr* ia64_psr (int ) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 int task_pt_regs (struct task_struct*) ;

void
user_enable_block_step (struct task_struct *child)
{
 struct ia64_psr *child_psr = ia64_psr(task_pt_regs(child));

 set_tsk_thread_flag(child, TIF_SINGLESTEP);
 child_psr->tb = 1;
}
