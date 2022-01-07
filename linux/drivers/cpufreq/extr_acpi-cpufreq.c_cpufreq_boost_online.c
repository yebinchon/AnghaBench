
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int boost_enabled; } ;


 TYPE_1__ acpi_cpufreq_driver ;
 int boost_set_msr (int ) ;

__attribute__((used)) static int cpufreq_boost_online(unsigned int cpu)
{




 return boost_set_msr(acpi_cpufreq_driver.boost_enabled);
}
