
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMC_INIT ;
 int cpusf_pmu_setup (unsigned int,int ) ;

__attribute__((used)) static int s390_pmu_sf_online_cpu(unsigned int cpu)
{
 return cpusf_pmu_setup(cpu, PMC_INIT);
}
