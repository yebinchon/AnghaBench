
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fsr; int * float_regs; int fpqdepth; int * fpqueue; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int psr; } ;


 int PSR_EF ;
 unsigned long PSR_PS ;
 int TIF_USEDFPU ;
 struct task_struct* current ;
 int die_if_kernel (char*,struct pt_regs*) ;
 int fpload (int *,int *) ;
 int fpsave (int *,int *,int *,int *) ;
 int get_psr () ;
 int * init_fregs ;
 int init_fsr ;
 struct task_struct* last_task_used_math ;
 int put_psr (int) ;
 int set_thread_flag (int ) ;
 int set_used_math () ;
 scalar_t__ used_math () ;

void do_fpd_trap(struct pt_regs *regs, unsigned long pc, unsigned long npc,
   unsigned long psr)
{

 if(psr & PSR_PS)
  die_if_kernel("Kernel gets FloatingPenguinUnit disabled trap", regs);

 put_psr(get_psr() | PSR_EF);
 regs->psr |= PSR_EF;

 if(last_task_used_math == current)
  return;
 if(last_task_used_math) {

  struct task_struct *fptask = last_task_used_math;
  fpsave(&fptask->thread.float_regs[0], &fptask->thread.fsr,
         &fptask->thread.fpqueue[0], &fptask->thread.fpqdepth);
 }
 last_task_used_math = current;
 if(used_math()) {
  fpload(&current->thread.float_regs[0], &current->thread.fsr);
 } else {

  fpload(&init_fregs[0], &init_fsr);
  set_used_math();
 }
}
