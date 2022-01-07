
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ g_smsc_fdc37m81x_base ;
 int smsc_dc37m81x_wr (int ,int ) ;

void smsc_fdc37m81x_config_set(u8 reg, u8 val)
{
 if (g_smsc_fdc37m81x_base)
  smsc_dc37m81x_wr(reg, val);
}
