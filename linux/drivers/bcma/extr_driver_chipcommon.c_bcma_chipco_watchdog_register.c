
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wdt ;
struct platform_device {int dummy; } ;
struct bcma_drv_cc {int ticks_per_ms; struct platform_device* watchdog; TYPE_2__* core; } ;
struct TYPE_3__ {scalar_t__ id; int rev; } ;
struct bcma_bus {int num; TYPE_1__ chipinfo; } ;
struct bcm47xx_wdt {int max_timer_ms; int timer_set_ms; int timer_set; struct bcma_drv_cc* driver_data; } ;
struct TYPE_4__ {struct bcma_bus* bus; } ;


 scalar_t__ BCMA_CHIP_ID_BCM53573 ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 int PTR_ERR (struct platform_device*) ;
 int bcma_chipco_watchdog_get_max_timer (struct bcma_drv_cc*) ;
 int bcma_chipco_watchdog_timer_set_ms_wdt ;
 int bcma_chipco_watchdog_timer_set_wdt ;
 struct platform_device* platform_device_register_data (int *,char*,int ,struct bcm47xx_wdt*,int) ;
 int pr_debug (char*) ;

int bcma_chipco_watchdog_register(struct bcma_drv_cc *cc)
{
 struct bcma_bus *bus = cc->core->bus;
 struct bcm47xx_wdt wdt = {};
 struct platform_device *pdev;

 if (bus->chipinfo.id == BCMA_CHIP_ID_BCM53573 &&
     bus->chipinfo.rev <= 1) {
  pr_debug("No watchdog on 53573A0 / 53573A1\n");
  return 0;
 }

 wdt.driver_data = cc;
 wdt.timer_set = bcma_chipco_watchdog_timer_set_wdt;
 wdt.timer_set_ms = bcma_chipco_watchdog_timer_set_ms_wdt;
 wdt.max_timer_ms =
  bcma_chipco_watchdog_get_max_timer(cc) / cc->ticks_per_ms;

 pdev = platform_device_register_data(((void*)0), "bcm47xx-wdt",
          bus->num, &wdt,
          sizeof(wdt));
 if (IS_ERR(pdev))
  return PTR_ERR(pdev);

 cc->watchdog = pdev;

 return 0;
}
