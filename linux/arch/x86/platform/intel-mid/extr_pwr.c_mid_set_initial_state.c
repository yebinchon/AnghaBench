
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mid_pwr {TYPE_1__** lss; } ;
struct TYPE_2__ {int state; } ;


 int CMD_SET_CFG ;
 unsigned int LSS_MAX_DEVS ;
 unsigned int LSS_MAX_SHARED_DEVS ;
 int PCI_D3hot ;
 int mid_pwr_set_state (struct mid_pwr*,int,int const) ;
 int mid_pwr_set_wake (struct mid_pwr*,int,int) ;
 int mid_pwr_wait_for_cmd (struct mid_pwr*,int ) ;

__attribute__((used)) static int mid_set_initial_state(struct mid_pwr *pwr, const u32 *states)
{
 unsigned int i, j;
 int ret;







 mid_pwr_set_wake(pwr, 0, 0xffffffff);
 mid_pwr_set_wake(pwr, 1, 0xffffffff);
 mid_pwr_set_state(pwr, 0, states[0]);
 mid_pwr_set_state(pwr, 1, states[1]);
 mid_pwr_set_state(pwr, 2, states[2]);
 mid_pwr_set_state(pwr, 3, states[3]);


 ret = mid_pwr_wait_for_cmd(pwr, CMD_SET_CFG);
 if (ret)
  return ret;

 for (i = 0; i < LSS_MAX_DEVS; i++) {
  for (j = 0; j < LSS_MAX_SHARED_DEVS; j++)
   pwr->lss[i][j].state = PCI_D3hot;
 }

 return 0;
}
