
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct voltagedomain {TYPE_1__* pmic; } ;
struct TYPE_2__ {int step_size; int slew_rate; } ;


 int abs (scalar_t__) ;
 int udelay (int) ;

void omap_vc_post_scale(struct voltagedomain *voltdm,
   unsigned long target_volt,
   u8 target_vsel, u8 current_vsel)
{
 u32 smps_steps = 0, smps_delay = 0;

 smps_steps = abs(target_vsel - current_vsel);

 smps_delay = ((smps_steps * voltdm->pmic->step_size) /
   voltdm->pmic->slew_rate) + 2;
 udelay(smps_delay);
}
