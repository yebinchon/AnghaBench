
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mid_pwr {int dummy; } ;


 int CMD_SET_CFG ;
 int EAGAIN ;
 int mid_pwr_get_state (struct mid_pwr*,int) ;
 int mid_pwr_set_state (struct mid_pwr*,int,int) ;
 int mid_pwr_wait_for_cmd (struct mid_pwr*,int ) ;

__attribute__((used)) static int __update_power_state(struct mid_pwr *pwr, int reg, int bit, int new)
{
 int curstate;
 u32 power;
 int ret;


 power = mid_pwr_get_state(pwr, reg);
 curstate = (power >> bit) & 3;
 if (curstate == new)
  return 0;


 mid_pwr_set_state(pwr, reg, (power & ~(3 << bit)) | (new << bit));


 ret = mid_pwr_wait_for_cmd(pwr, CMD_SET_CFG);
 if (ret)
  return ret;


 power = mid_pwr_get_state(pwr, reg);
 curstate = (power >> bit) & 3;
 if (curstate != new)
  return -EAGAIN;

 return 0;
}
