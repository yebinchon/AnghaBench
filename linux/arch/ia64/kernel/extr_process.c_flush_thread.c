
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;


 int IA64_THREAD_DBG_VALID ;
 int IA64_THREAD_FPH_VALID ;
 TYPE_2__* current ;
 int ia64_drop_fpu (TYPE_2__*) ;

void
flush_thread (void)
{

 current->thread.flags &= ~(IA64_THREAD_FPH_VALID | IA64_THREAD_DBG_VALID);
 ia64_drop_fpu(current);
}
