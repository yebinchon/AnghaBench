
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sibling_subcore_state; int paca_index; } ;
struct TYPE_3__ {int* in_guest; } ;


 int cpu_thread_in_core (int ) ;
 int kvmppc_cur_subcore_size () ;
 TYPE_2__* local_paca ;

void kvmppc_subcore_enter_guest(void)
{
 int thread_id, subcore_id;

 thread_id = cpu_thread_in_core(local_paca->paca_index);
 subcore_id = thread_id / kvmppc_cur_subcore_size();

 local_paca->sibling_subcore_state->in_guest[subcore_id] = 1;
}
