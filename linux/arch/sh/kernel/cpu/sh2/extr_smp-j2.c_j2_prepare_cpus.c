
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int IRQF_PERCPU ;
 unsigned int NR_CPUS ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 scalar_t__ j2_ipi_interrupt_handler ;
 int j2_ipi_irq ;
 void* j2_ipi_trigger ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 void* of_iomap (struct device_node*,int ) ;
 scalar_t__ request_irq (int ,scalar_t__,int ,char*,void*) ;
 int set_cpu_possible (unsigned int,int) ;
 int set_cpu_present (unsigned int,int) ;
 void* sh2_cpuid_addr ;

__attribute__((used)) static void j2_prepare_cpus(unsigned int max_cpus)
{
 struct device_node *np;
 unsigned i, max = 1;

 np = of_find_compatible_node(((void*)0), ((void*)0), "jcore,ipi-controller");
 if (!np)
  goto out;

 j2_ipi_irq = irq_of_parse_and_map(np, 0);
 j2_ipi_trigger = of_iomap(np, 0);
 if (!j2_ipi_irq || !j2_ipi_trigger)
  goto out;

 np = of_find_compatible_node(((void*)0), ((void*)0), "jcore,cpuid-mmio");
 if (!np)
  goto out;

 sh2_cpuid_addr = of_iomap(np, 0);
 if (!sh2_cpuid_addr)
  goto out;

 if (request_irq(j2_ipi_irq, j2_ipi_interrupt_handler, IRQF_PERCPU,
   "ipi", (void *)j2_ipi_interrupt_handler) != 0)
  goto out;

 max = max_cpus;
out:


 for (i=max; i<NR_CPUS; i++) {
  set_cpu_possible(i, 0);
  set_cpu_present(i, 0);
 }
}
