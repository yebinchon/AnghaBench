
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int resource_size_t ;





 int LPC32XX_UARTCTL_CLOOP ;
 int WARN (int,char*,int) ;
 int readl (int ) ;
 int writel (int,int ) ;

void lpc32xx_loopback_set(resource_size_t mapbase, int state)
{
 int bit;
 u32 tmp;

 switch (mapbase) {
 case 130:
  bit = 0;
  break;
 case 129:
  bit = 1;
  break;
 case 128:
  bit = 6;
  break;
 default:
  WARN(1, "lpc32xx_hs: Warning: Unknown port at %08x\n", mapbase);
  return;
 }

 tmp = readl(LPC32XX_UARTCTL_CLOOP);
 if (state)
  tmp |= (1 << bit);
 else
  tmp &= ~(1 << bit);
 writel(tmp, LPC32XX_UARTCTL_CLOOP);
}
