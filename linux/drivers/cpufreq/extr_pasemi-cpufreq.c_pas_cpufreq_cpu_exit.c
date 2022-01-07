
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 scalar_t__ SYSTEM_RUNNING ;
 int iounmap (scalar_t__) ;
 scalar_t__ sdcasr_mapbase ;
 scalar_t__ sdcpwr_mapbase ;
 scalar_t__ system_state ;

__attribute__((used)) static int pas_cpufreq_cpu_exit(struct cpufreq_policy *policy)
{




 if (system_state >= SYSTEM_RUNNING)
  return 0;

 if (sdcasr_mapbase)
  iounmap(sdcasr_mapbase);
 if (sdcpwr_mapbase)
  iounmap(sdcpwr_mapbase);

 return 0;
}
