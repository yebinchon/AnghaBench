
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __cpu_suspend (unsigned long,int (*) (unsigned long),int ) ;
 int cpu_logical_map (int ) ;
 int smp_processor_id () ;

int cpu_suspend(unsigned long arg, int (*fn)(unsigned long))
{
 u32 __mpidr = cpu_logical_map(smp_processor_id());
 return __cpu_suspend(arg, fn, __mpidr);
}
