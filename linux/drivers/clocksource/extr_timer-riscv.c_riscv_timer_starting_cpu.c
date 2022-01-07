
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int cpumask; } ;


 int SIE_STIE ;
 int clockevents_config_and_register (struct clock_event_device*,int ,int,int) ;
 int cpumask_of (unsigned int) ;
 int csr_set (int ,int ) ;
 struct clock_event_device* per_cpu_ptr (int *,unsigned int) ;
 int riscv_clock_event ;
 int riscv_timebase ;
 int sie ;

__attribute__((used)) static int riscv_timer_starting_cpu(unsigned int cpu)
{
 struct clock_event_device *ce = per_cpu_ptr(&riscv_clock_event, cpu);

 ce->cpumask = cpumask_of(cpu);
 clockevents_config_and_register(ce, riscv_timebase, 100, 0x7fffffff);

 csr_set(sie, SIE_STIE);
 return 0;
}
