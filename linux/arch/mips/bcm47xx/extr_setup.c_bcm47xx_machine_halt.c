
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int drv_cc; } ;
struct TYPE_5__ {TYPE_1__ bus; } ;
struct TYPE_6__ {TYPE_2__ bcma; int ssb; } ;




 TYPE_3__ bcm47xx_bus ;
 int bcm47xx_bus_type ;
 int bcma_chipco_watchdog_timer_set (int *,int ) ;
 int cpu_relax () ;
 int local_irq_disable () ;
 int ssb_watchdog_timer_set (int *,int ) ;

__attribute__((used)) static void bcm47xx_machine_halt(void)
{

 local_irq_disable();
 switch (bcm47xx_bus_type) {
 }
 while (1)
  cpu_relax();
}
