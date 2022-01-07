
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int GD82559_1_IRQ ;
 int GD82559_1_PIN ;
 int GD82559_2_IRQ ;
 int GD82559_2_PIN ;
 int IRQ_LEVEL_LOW ;
 int IRQ_SIGNAL_THROUGH ;
 int IRQ_TRIGGER_LEVEL ;
 int UPD720100_INTA_IRQ ;
 int UPD720100_INTA_PIN ;
 int UPD720100_INTB_IRQ ;
 int UPD720100_INTB_PIN ;
 int UPD720100_INTC_IRQ ;
 int UPD720100_INTC_PIN ;
 int vr41xx_set_irq_level (int ,int ) ;
 int vr41xx_set_irq_trigger (int ,int ,int ) ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 int irq = -1;

 switch (slot) {
 case 12:
  vr41xx_set_irq_trigger(GD82559_1_PIN,
           IRQ_TRIGGER_LEVEL,
           IRQ_SIGNAL_THROUGH);
  vr41xx_set_irq_level(GD82559_1_PIN, IRQ_LEVEL_LOW);
  irq = GD82559_1_IRQ;
  break;
 case 13:
  vr41xx_set_irq_trigger(GD82559_2_PIN,
           IRQ_TRIGGER_LEVEL,
           IRQ_SIGNAL_THROUGH);
  vr41xx_set_irq_level(GD82559_2_PIN, IRQ_LEVEL_LOW);
  irq = GD82559_2_IRQ;
  break;
 case 14:
  switch (pin) {
  case 1:
   vr41xx_set_irq_trigger(UPD720100_INTA_PIN,
            IRQ_TRIGGER_LEVEL,
            IRQ_SIGNAL_THROUGH);
   vr41xx_set_irq_level(UPD720100_INTA_PIN,
          IRQ_LEVEL_LOW);
   irq = UPD720100_INTA_IRQ;
   break;
  case 2:
   vr41xx_set_irq_trigger(UPD720100_INTB_PIN,
            IRQ_TRIGGER_LEVEL,
            IRQ_SIGNAL_THROUGH);
   vr41xx_set_irq_level(UPD720100_INTB_PIN,
          IRQ_LEVEL_LOW);
   irq = UPD720100_INTB_IRQ;
   break;
  case 3:
   vr41xx_set_irq_trigger(UPD720100_INTC_PIN,
            IRQ_TRIGGER_LEVEL,
            IRQ_SIGNAL_THROUGH);
   vr41xx_set_irq_level(UPD720100_INTC_PIN,
          IRQ_LEVEL_LOW);
   irq = UPD720100_INTC_IRQ;
   break;
  default:
   break;
  }
  break;
 default:
  break;
 }

 return irq;
}
