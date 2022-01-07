
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_sysinfo {int dummy; } ;


 struct cvmx_sysinfo sysinfo ;

struct cvmx_sysinfo *cvmx_sysinfo_get(void)
{
 return &sysinfo;
}
