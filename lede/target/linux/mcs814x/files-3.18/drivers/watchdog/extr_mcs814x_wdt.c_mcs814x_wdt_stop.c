
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int dummy; } ;
struct mcs814x_wdt {int lock; scalar_t__ regs; } ;


 scalar_t__ WDT_CTRL ;
 int WDT_CTRL_EN ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct mcs814x_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int mcs814x_wdt_stop(struct watchdog_device *dev)
{
 struct mcs814x_wdt *wdt = watchdog_get_drvdata(dev);
 u32 reg;

 spin_lock(&wdt->lock);
 reg = readl_relaxed(wdt->regs + WDT_CTRL);
 reg &= ~WDT_CTRL_EN;
 writel_relaxed(reg, wdt->regs + WDT_CTRL);
 spin_unlock(&wdt->lock);

 return 0;
}
