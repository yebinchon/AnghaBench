
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LPC32XX_CLKPWR_DEVID (int) ;
 int __raw_readl (int ) ;

void lpc32xx_get_uid(u32 devid[4])
{
 int i;

 for (i = 0; i < 4; i++)
  devid[i] = __raw_readl(LPC32XX_CLKPWR_DEVID(i << 2));
}
