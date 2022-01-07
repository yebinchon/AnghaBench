
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUILD_BUG_ON (int) ;
 int IRQF_PERCPU ;
 int SMP_MSG_NR ;
 int ipi_interrupt_handler ;
 int request_irq (int,int ,int ,char*,void*) ;
 int set_cpu_present (int,int) ;

__attribute__((used)) static void shx3_prepare_cpus(unsigned int max_cpus)
{
 int i;

 BUILD_BUG_ON(SMP_MSG_NR >= 8);

 for (i = 0; i < SMP_MSG_NR; i++)
  request_irq(104 + i, ipi_interrupt_handler,
       IRQF_PERCPU, "IPI", (void *)(long)i);

 for (i = 0; i < max_cpus; i++)
  set_cpu_present(i, 1);
}
