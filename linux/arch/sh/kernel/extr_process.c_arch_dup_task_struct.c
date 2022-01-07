
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ xstate; } ;
struct task_struct {TYPE_1__ thread; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kmem_cache_alloc (int ,int ) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 int task_pt_regs (struct task_struct*) ;
 int task_xstate_cachep ;
 int unlazy_fpu (struct task_struct*,int ) ;
 int xstate_size ;

int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
{



 *dst = *src;

 if (src->thread.xstate) {
  dst->thread.xstate = kmem_cache_alloc(task_xstate_cachep,
            GFP_KERNEL);
  if (!dst->thread.xstate)
   return -ENOMEM;
  memcpy(dst->thread.xstate, src->thread.xstate, xstate_size);
 }

 return 0;
}
