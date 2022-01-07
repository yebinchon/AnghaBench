
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_alloc_info {int ioapic_pin; int ioapic_id; } ;


 int NUMA_NO_NODE ;
 int alloc_isa_irq_from_domain (struct irq_domain*,int ,int,int,struct irq_alloc_info*) ;
 int ioapic_mutex ;
 int ioapic_set_alloc_attr (struct irq_alloc_info*,int ,int ,int ) ;
 struct irq_domain* mp_ioapic_irqdomain (int) ;
 int mpc_ioapic_id (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mp_alloc_timer_irq(int ioapic, int pin)
{
 int irq = -1;
 struct irq_domain *domain = mp_ioapic_irqdomain(ioapic);

 if (domain) {
  struct irq_alloc_info info;

  ioapic_set_alloc_attr(&info, NUMA_NO_NODE, 0, 0);
  info.ioapic_id = mpc_ioapic_id(ioapic);
  info.ioapic_pin = pin;
  mutex_lock(&ioapic_mutex);
  irq = alloc_isa_irq_from_domain(domain, 0, ioapic, pin, &info);
  mutex_unlock(&ioapic_mutex);
 }

 return irq;
}
