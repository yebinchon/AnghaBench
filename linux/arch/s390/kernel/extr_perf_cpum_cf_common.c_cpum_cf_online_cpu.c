
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMC_INIT ;
 int cpum_cf_setup (unsigned int,int ) ;

__attribute__((used)) static int cpum_cf_online_cpu(unsigned int cpu)
{
 return cpum_cf_setup(cpu, PMC_INIT);
}
