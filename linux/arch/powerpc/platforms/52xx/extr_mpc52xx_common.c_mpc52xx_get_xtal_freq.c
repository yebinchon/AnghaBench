
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int rstcfg; int ipb_clk_sel; } ;


 int in_8 (int *) ;
 int in_be32 (int *) ;
 TYPE_1__* mpc52xx_cdm ;
 unsigned int mpc5xxx_get_bus_frequency (struct device_node*) ;

unsigned int mpc52xx_get_xtal_freq(struct device_node *node)
{
 u32 val;
 unsigned int freq;

 if (!mpc52xx_cdm)
  return 0;

 freq = mpc5xxx_get_bus_frequency(node);
 if (!freq)
  return 0;

 if (in_8(&mpc52xx_cdm->ipb_clk_sel) & 0x1)
  freq *= 2;

 val = in_be32(&mpc52xx_cdm->rstcfg);
 if (val & (1 << 5))
  freq *= 8;
 else
  freq *= 4;
 if (val & (1 << 6))
  freq /= 12;
 else
  freq /= 16;

 return freq;
}
