
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sibling_subcore_state; } ;
struct TYPE_3__ {int flags; } ;


 int CORE_TB_RESYNC_REQ_BIT ;
 int cpu_relax () ;
 TYPE_2__* local_paca ;
 scalar_t__ test_bit (int ,int *) ;

void wait_for_tb_resync(void)
{
 if (!local_paca->sibling_subcore_state)
  return;

 while (test_bit(CORE_TB_RESYNC_REQ_BIT,
    &local_paca->sibling_subcore_state->flags))
  cpu_relax();
}
