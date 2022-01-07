
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int early_per_cpu (int ,int) ;
 int x86_cpu_to_apicid ;

__attribute__((used)) static int bigsmp_early_logical_apicid(int cpu)
{

 return early_per_cpu(x86_cpu_to_apicid, cpu);
}
