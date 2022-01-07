
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int irq_hw_number_t ;


 int do_IPI ;
 int enable_percpu_irq (unsigned int,int ) ;
 int ipi_dev ;
 unsigned int irq_find_mapping (int *,unsigned int) ;
 int panic (char*,unsigned int) ;
 int* per_cpu_ptr (int *,int) ;
 int request_percpu_irq (unsigned int,int ,char*,int*) ;

int smp_ipi_irq_setup(int cpu, irq_hw_number_t hwirq)
{
 int *dev = per_cpu_ptr(&ipi_dev, cpu);
 unsigned int virq = irq_find_mapping(((void*)0), hwirq);

 if (!virq)
  panic("Cannot find virq for root domain and hwirq=%lu", hwirq);


 if (!cpu) {
  int rc;

  rc = request_percpu_irq(virq, do_IPI, "IPI Interrupt", dev);
  if (rc)
   panic("Percpu IRQ request failed for %u\n", virq);
 }

 enable_percpu_irq(virq, 0);

 return 0;
}
