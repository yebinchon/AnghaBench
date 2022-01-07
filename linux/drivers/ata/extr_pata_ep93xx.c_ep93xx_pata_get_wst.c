
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDECFG_WST_SHIFT ;

__attribute__((used)) static int ep93xx_pata_get_wst(int pio_mode)
{
 int val;

 if (pio_mode == 0)
  val = 3;
 else if (pio_mode < 3)
  val = 2;
 else
  val = 1;

 return val << IDECFG_WST_SHIFT;
}
