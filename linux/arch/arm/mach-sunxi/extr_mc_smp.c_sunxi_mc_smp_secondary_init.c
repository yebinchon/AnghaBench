
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sunxi_cpu0_hotplug_support_set (int) ;

__attribute__((used)) static void sunxi_mc_smp_secondary_init(unsigned int cpu)
{

 if (cpu == 0)
  sunxi_cpu0_hotplug_support_set(0);
}
