
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct irq_bucket {scalar_t__ irq; } ;


 int generic_handle_irq (scalar_t__) ;
 struct irq_bucket** irq_map ;
 unsigned int leon_eirq_get (int) ;
 int sparc_leon3_cpuid () ;

__attribute__((used)) static void leon_handle_ext_irq(struct irq_desc *desc)
{
 unsigned int eirq;
 struct irq_bucket *p;
 int cpu = sparc_leon3_cpuid();

 eirq = leon_eirq_get(cpu);
 p = irq_map[eirq];
 if ((eirq & 0x10) && p && p->irq)
  generic_handle_irq(p->irq);
}
