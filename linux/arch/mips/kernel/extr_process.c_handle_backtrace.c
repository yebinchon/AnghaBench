
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backtrace_csd_busy ;
 int cpumask_clear_cpu (int ,int *) ;
 int get_irq_regs () ;
 int nmi_cpu_backtrace (int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void handle_backtrace(void *info)
{
 nmi_cpu_backtrace(get_irq_regs());
 cpumask_clear_cpu(smp_processor_id(), &backtrace_csd_busy);
}
