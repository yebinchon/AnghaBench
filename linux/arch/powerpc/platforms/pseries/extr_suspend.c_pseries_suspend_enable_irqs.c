
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cacheinfo_cpu_offline (int ) ;
 int cacheinfo_cpu_online (int ) ;
 int post_mobility_fixup () ;
 int smp_processor_id () ;

__attribute__((used)) static void pseries_suspend_enable_irqs(void)
{




 cacheinfo_cpu_offline(smp_processor_id());
 post_mobility_fixup();
 cacheinfo_cpu_online(smp_processor_id());
}
