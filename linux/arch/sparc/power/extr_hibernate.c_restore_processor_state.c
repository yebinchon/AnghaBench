
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int context; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 int CTX_HWBITS (int ) ;
 TYPE_1__* current ;
 int tsb_context_switch_ctx (struct mm_struct*,int ) ;

void restore_processor_state(void)
{
 struct mm_struct *mm = current->active_mm;

 tsb_context_switch_ctx(mm, CTX_HWBITS(mm->context));
}
