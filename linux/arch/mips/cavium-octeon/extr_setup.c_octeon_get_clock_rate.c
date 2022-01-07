
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct cvmx_sysinfo {int cpu_clock_hz; } ;


 struct cvmx_sysinfo* cvmx_sysinfo_get () ;

uint64_t octeon_get_clock_rate(void)
{
 struct cvmx_sysinfo *sysinfo = cvmx_sysinfo_get();

 return sysinfo->cpu_clock_hz;
}
