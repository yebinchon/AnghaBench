
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int cpu_llc_id ;
 int per_cpu (int ,int) ;

u16 amd_get_nb_id(int cpu)
{
 return per_cpu(cpu_llc_id, cpu);
}
