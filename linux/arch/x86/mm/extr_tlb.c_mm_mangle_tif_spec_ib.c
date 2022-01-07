
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {scalar_t__ mm; } ;
struct TYPE_2__ {unsigned long flags; } ;


 unsigned long LAST_USER_MM_IBPB ;
 unsigned long TIF_SPEC_IB ;
 TYPE_1__* task_thread_info (struct task_struct*) ;

__attribute__((used)) static inline unsigned long mm_mangle_tif_spec_ib(struct task_struct *next)
{
 unsigned long next_tif = task_thread_info(next)->flags;
 unsigned long ibpb = (next_tif >> TIF_SPEC_IB) & LAST_USER_MM_IBPB;

 return (unsigned long)next->mm | ibpb;
}
