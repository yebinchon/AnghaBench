
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int drv_cc; } ;
struct TYPE_6__ {TYPE_1__ bus; } ;
struct TYPE_7__ {int chip_id; } ;
struct TYPE_8__ {TYPE_2__ bcma; TYPE_3__ ssb; } ;




 TYPE_4__ bcm47xx_bus ;
 int bcm47xx_bus_type ;
 int bcma_chipco_watchdog_timer_set (int *,int) ;
 int cpu_relax () ;
 int local_irq_disable () ;
 int pr_alert (char*) ;
 int ssb_watchdog_timer_set (TYPE_3__*,int) ;
 int write_c0_diag4 (int) ;

__attribute__((used)) static void bcm47xx_machine_restart(char *command)
{
 pr_alert("Please stand by while rebooting the system...\n");
 local_irq_disable();

 switch (bcm47xx_bus_type) {
 }
 while (1)
  cpu_relax();
}
