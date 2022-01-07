
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int TEGRA_FLUSH_CACHE_LOUIS ;
 int WARN (int,char*) ;
 int tegra_disable_clean_inv_dcache (int ) ;
 int tegra_hotplug_shutdown () ;

void tegra_cpu_die(unsigned int cpu)
{
 if (!tegra_hotplug_shutdown) {
  WARN(1, "hotplug is not yet initialized\n");
  return;
 }


 tegra_disable_clean_inv_dcache(TEGRA_FLUSH_CACHE_LOUIS);


 tegra_hotplug_shutdown();


 BUG();
}
