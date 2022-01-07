
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_number_map (int) ;
 int smp_processor_id () ;

__attribute__((used)) static int octeon_cpu_for_coreid(int coreid)
{



 return smp_processor_id();

}
