
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct mcs814x_wdt {int lock; scalar_t__ regs; int clk; } ;


 scalar_t__ WDT_COUNT ;
 scalar_t__ WDT_MAX_VALUE ;
 unsigned int clk_get_rate (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct mcs814x_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static int mcs814x_wdt_set_timeout(struct watchdog_device *dev,
    unsigned int new_timeout)
{
 struct mcs814x_wdt *wdt = watchdog_get_drvdata(dev);

 spin_lock(&wdt->lock);



 writel_relaxed(WDT_MAX_VALUE - (new_timeout * clk_get_rate(wdt->clk)),
  wdt->regs + WDT_COUNT);
 spin_unlock(&wdt->lock);

 return 0;
}
