
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;
 int printk (char*,int ) ;
 int smp_processor_id () ;

void cpu_panic(void)
{
 printk("CPU[%d]: Returns from cpu_idle!\n", smp_processor_id());
 panic("SMP bolixed\n");
}
