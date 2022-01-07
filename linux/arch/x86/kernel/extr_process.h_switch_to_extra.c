
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {unsigned long flags; } ;


 int CONFIG_SMP ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned long _TIF_SPEC_IB ;
 unsigned long _TIF_WORK_CTXSW_NEXT ;
 unsigned long _TIF_WORK_CTXSW_PREV ;
 int __switch_to_xtra (struct task_struct*,struct task_struct*) ;
 int static_branch_likely (int *) ;
 int switch_to_cond_stibp ;
 TYPE_1__* task_thread_info (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void switch_to_extra(struct task_struct *prev,
       struct task_struct *next)
{
 unsigned long next_tif = task_thread_info(next)->flags;
 unsigned long prev_tif = task_thread_info(prev)->flags;

 if (IS_ENABLED(CONFIG_SMP)) {






  if (!static_branch_likely(&switch_to_cond_stibp)) {
   prev_tif &= ~_TIF_SPEC_IB;
   next_tif &= ~_TIF_SPEC_IB;
  }
 }





 if (unlikely(next_tif & _TIF_WORK_CTXSW_NEXT ||
       prev_tif & _TIF_WORK_CTXSW_PREV))
  __switch_to_xtra(prev, next);
}
