
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BAD_APICID ;
 scalar_t__ cpu_present (int) ;
 int nr_cpu_ids ;
 scalar_t__ per_cpu (int ,int) ;
 int x86_bios_cpu_apicid ;

int default_cpu_present_to_apicid(int mps_cpu)
{
 if (mps_cpu < nr_cpu_ids && cpu_present(mps_cpu))
  return (int)per_cpu(x86_bios_cpu_apicid, mps_cpu);
 else
  return BAD_APICID;
}
