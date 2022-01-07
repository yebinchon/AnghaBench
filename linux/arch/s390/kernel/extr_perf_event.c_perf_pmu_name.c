
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpum_cf_avail () ;
 scalar_t__ cpum_sf_avail () ;

const char *perf_pmu_name(void)
{
 if (cpum_cf_avail() || cpum_sf_avail())
  return "CPU-Measurement Facilities (CPU-MF)";
 return "pmu";
}
