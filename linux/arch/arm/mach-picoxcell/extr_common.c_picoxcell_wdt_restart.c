
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int WDT_CTRL_REG_EN_MASK ;
 scalar_t__ WDT_CTRL_REG_OFFS ;
 scalar_t__ WDT_TIMEOUT_REG_OFFS ;
 int mdelay (int) ;
 scalar_t__ wdt_regs ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void picoxcell_wdt_restart(enum reboot_mode mode, const char *cmd)
{




 if (wdt_regs) {
  writel_relaxed(WDT_CTRL_REG_EN_MASK, wdt_regs + WDT_CTRL_REG_OFFS);
  writel_relaxed(0, wdt_regs + WDT_TIMEOUT_REG_OFFS);

  mdelay(500);
 }
}
