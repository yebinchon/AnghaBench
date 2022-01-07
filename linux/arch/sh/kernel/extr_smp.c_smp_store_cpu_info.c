
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cpuinfo {int loops_per_jiffy; } ;


 int boot_cpu_data ;
 struct sh_cpuinfo* cpu_data ;
 int loops_per_jiffy ;
 int memcpy (struct sh_cpuinfo*,int *,int) ;

__attribute__((used)) static inline void smp_store_cpu_info(unsigned int cpu)
{
 struct sh_cpuinfo *c = cpu_data + cpu;

 memcpy(c, &boot_cpu_data, sizeof(struct sh_cpuinfo));

 c->loops_per_jiffy = loops_per_jiffy;
}
