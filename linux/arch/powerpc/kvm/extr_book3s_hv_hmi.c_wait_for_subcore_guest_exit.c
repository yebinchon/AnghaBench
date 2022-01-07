
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sibling_subcore_state; } ;
struct TYPE_3__ {scalar_t__* in_guest; } ;


 int MAX_SUBCORE_PER_CORE ;
 int cpu_relax () ;
 TYPE_2__* local_paca ;

void wait_for_subcore_guest_exit(void)
{
 int i;
 if (!local_paca->sibling_subcore_state)
  return;

 for (i = 0; i < MAX_SUBCORE_PER_CORE; i++)
  while (local_paca->sibling_subcore_state->in_guest[i])
   cpu_relax();
}
