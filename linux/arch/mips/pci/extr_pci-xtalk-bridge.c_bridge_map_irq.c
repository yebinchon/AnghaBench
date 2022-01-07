
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pci_dev {int bus; } ;
struct irq_alloc_info {size_t pin; int nasid; struct bridge_controller* ctrl; } ;
struct bridge_controller {int* pci_int; int nasid; int domain; } ;


 struct bridge_controller* BRIDGE_CONTROLLER (int ) ;
 int irq_domain_alloc_irqs (int ,int,int ,struct irq_alloc_info*) ;

__attribute__((used)) static int bridge_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 struct bridge_controller *bc = BRIDGE_CONTROLLER(dev->bus);
 struct irq_alloc_info info;
 int irq;

 irq = bc->pci_int[slot];
 if (irq == -1) {
  info.ctrl = bc;
  info.nasid = bc->nasid;
  info.pin = slot;

  irq = irq_domain_alloc_irqs(bc->domain, 1, bc->nasid, &info);
  if (irq < 0)
   return irq;

  bc->pci_int[slot] = irq;
 }
 return irq;
}
