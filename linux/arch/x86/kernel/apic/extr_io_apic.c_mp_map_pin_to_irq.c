
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mp_chip_data {int count; } ;
struct irq_domain {int dummy; } ;
struct irq_alloc_info {int dummy; } ;
struct TYPE_2__ {int srcbusirq; int srcbus; } ;


 int EBUSY ;
 int ENOENT ;
 int ENOSYS ;
 unsigned int IOAPIC_MAP_ALLOC ;
 int alloc_irq_from_domain (struct irq_domain*,int,int ,struct irq_alloc_info*) ;
 int alloc_isa_irq_from_domain (struct irq_domain*,int,int,int,struct irq_alloc_info*) ;
 int ioapic_copy_alloc_attr (struct irq_alloc_info*,struct irq_alloc_info*,int ,int,int) ;
 int ioapic_mutex ;
 int irq_find_mapping (struct irq_domain*,int) ;
 struct mp_chip_data* irq_get_chip_data (int) ;
 int mp_bus_not_pci ;
 int mp_check_pin_attr (int,struct irq_alloc_info*) ;
 struct irq_domain* mp_ioapic_irqdomain (int) ;
 TYPE_1__* mp_irqs ;
 int mp_is_legacy_irq (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int mp_map_pin_to_irq(u32 gsi, int idx, int ioapic, int pin,
        unsigned int flags, struct irq_alloc_info *info)
{
 int irq;
 bool legacy = 0;
 struct irq_alloc_info tmp;
 struct mp_chip_data *data;
 struct irq_domain *domain = mp_ioapic_irqdomain(ioapic);

 if (!domain)
  return -ENOSYS;

 if (idx >= 0 && test_bit(mp_irqs[idx].srcbus, mp_bus_not_pci)) {
  irq = mp_irqs[idx].srcbusirq;
  legacy = mp_is_legacy_irq(irq);
 }

 mutex_lock(&ioapic_mutex);
 if (!(flags & IOAPIC_MAP_ALLOC)) {
  if (!legacy) {
   irq = irq_find_mapping(domain, pin);
   if (irq == 0)
    irq = -ENOENT;
  }
 } else {
  ioapic_copy_alloc_attr(&tmp, info, gsi, ioapic, pin);
  if (legacy)
   irq = alloc_isa_irq_from_domain(domain, irq,
       ioapic, pin, &tmp);
  else if ((irq = irq_find_mapping(domain, pin)) == 0)
   irq = alloc_irq_from_domain(domain, ioapic, gsi, &tmp);
  else if (!mp_check_pin_attr(irq, &tmp))
   irq = -EBUSY;
  if (irq >= 0) {
   data = irq_get_chip_data(irq);
   data->count++;
  }
 }
 mutex_unlock(&ioapic_mutex);

 return irq;
}
