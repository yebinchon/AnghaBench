
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* states; } ;
struct TYPE_3__ {int disabled; } ;


 int pr_info_once (char*) ;
 TYPE_2__ tegra_idle_driver ;

void tegra20_cpuidle_pcie_irqs_in_use(void)
{
 pr_info_once(
  "Disabling cpuidle LP2 state, since PCIe IRQs are in use\n");
 tegra_idle_driver.states[1].disabled = 1;
}
