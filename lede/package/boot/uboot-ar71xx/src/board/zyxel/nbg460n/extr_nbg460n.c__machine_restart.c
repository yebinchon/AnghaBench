
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AR71XX_RESET_BASE ;
 scalar_t__ AR91XX_RESET_REG_RESET_MODULE ;
 int KSEG1ADDR (scalar_t__) ;
 int RESET_MODULE_DDR ;
 int RESET_MODULE_FULL_CHIP ;
 int readl (int ) ;
 int writel (int,int ) ;

void _machine_restart(void)
{
 for (;;) {
  writel((RESET_MODULE_FULL_CHIP | RESET_MODULE_DDR),
   KSEG1ADDR(AR71XX_RESET_BASE + AR91XX_RESET_REG_RESET_MODULE));
        readl(KSEG1ADDR(AR71XX_RESET_BASE + AR91XX_RESET_REG_RESET_MODULE));
 }
}
