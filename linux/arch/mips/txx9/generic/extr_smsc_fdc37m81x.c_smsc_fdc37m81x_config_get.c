
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ g_smsc_fdc37m81x_base ;
 int smsc_fdc37m81x_rd (int ) ;

u8 smsc_fdc37m81x_config_get(u8 reg)
{
 u8 val = 0;

 if (g_smsc_fdc37m81x_base)
  val = smsc_fdc37m81x_rd(reg);

 return val;
}
