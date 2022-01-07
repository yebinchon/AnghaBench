
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* xstate; } ;
struct task_struct {TYPE_1__ thread; } ;
struct sh_fpu_soft_struct {void* fpscr; } ;
struct sh_fpu_hard_struct {void* fpscr; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {struct sh_fpu_soft_struct softfpu; struct sh_fpu_soft_struct hardfpu; } ;


 int CPU_HAS_FPU ;
 int ENOMEM ;
 void* FPSCR_INIT ;
 int GFP_KERNEL ;
 TYPE_3__ boot_cpu_data ;
 struct task_struct* current ;
 TYPE_2__* kmem_cache_alloc (int ,int ) ;
 int memset (struct sh_fpu_soft_struct*,int ,int ) ;
 int set_stopped_child_used_math (struct task_struct*) ;
 int task_pt_regs (struct task_struct*) ;
 int task_xstate_cachep ;
 scalar_t__ tsk_used_math (struct task_struct*) ;
 int unlazy_fpu (struct task_struct*,int ) ;
 int xstate_size ;

int init_fpu(struct task_struct *tsk)
{
 if (tsk_used_math(tsk)) {
  if ((boot_cpu_data.flags & CPU_HAS_FPU) && tsk == current)
   unlazy_fpu(tsk, task_pt_regs(tsk));
  return 0;
 }




 if (!tsk->thread.xstate) {
  tsk->thread.xstate = kmem_cache_alloc(task_xstate_cachep,
            GFP_KERNEL);
  if (!tsk->thread.xstate)
   return -ENOMEM;
 }

 if (boot_cpu_data.flags & CPU_HAS_FPU) {
  struct sh_fpu_hard_struct *fp = &tsk->thread.xstate->hardfpu;
  memset(fp, 0, xstate_size);
  fp->fpscr = FPSCR_INIT;
 } else {
  struct sh_fpu_soft_struct *fp = &tsk->thread.xstate->softfpu;
  memset(fp, 0, xstate_size);
  fp->fpscr = FPSCR_INIT;
 }

 set_stopped_child_used_math(tsk);
 return 0;
}
