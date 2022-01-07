
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sibling_subcore_state; } ;
struct TYPE_3__ {int flags; } ;


 int CORE_TB_RESYNC_REQ_BIT ;
 TYPE_2__* local_paca ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static bool kvmppc_tb_resync_required(void)
{
 if (test_and_set_bit(CORE_TB_RESYNC_REQ_BIT,
    &local_paca->sibling_subcore_state->flags))
  return 0;

 return 1;
}
