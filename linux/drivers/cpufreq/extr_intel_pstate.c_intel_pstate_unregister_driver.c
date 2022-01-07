
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int cpufreq_unregister_driver (int ) ;
 scalar_t__ hwp_active ;
 int intel_pstate_driver ;
 int intel_pstate_driver_cleanup () ;

__attribute__((used)) static int intel_pstate_unregister_driver(void)
{
 if (hwp_active)
  return -EBUSY;

 cpufreq_unregister_driver(intel_pstate_driver);
 intel_pstate_driver_cleanup();

 return 0;
}
