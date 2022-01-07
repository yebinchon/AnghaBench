
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int* cpu_to_phys_id ;
 int get_hard_smp_processor_id (int) ;

bool arch_match_cpu_phys_id(int cpu, u64 phys_id)
{
 return (int)phys_id == get_hard_smp_processor_id(cpu);
}
