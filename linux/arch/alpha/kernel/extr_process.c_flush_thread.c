
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ unique; } ;
struct TYPE_4__ {TYPE_1__ pcb; scalar_t__ ieee_state; } ;


 int FPCR_DYN_NORMAL ;
 TYPE_2__* current_thread_info () ;
 int ieee_swcr_to_fpcr (int ) ;
 int wrfpcr (int) ;

void
flush_thread(void)
{


 current_thread_info()->ieee_state = 0;
 wrfpcr(FPCR_DYN_NORMAL | ieee_swcr_to_fpcr(0));


 current_thread_info()->pcb.unique = 0;
}
