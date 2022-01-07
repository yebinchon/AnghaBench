
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_msg {int address_lo; } ;
struct msi_desc {struct msi_msg msg; } ;
struct irq_data {int irq; } ;
struct cpumask {int dummy; } ;


 int IRQ_SET_MASK_OK ;
 int cpumask_first (struct cpumask const*) ;
 struct msi_desc* irq_get_msi_desc (int ) ;
 int pci_write_msi_msg (int ,struct msi_msg*) ;

__attribute__((used)) static int zpci_set_irq_affinity(struct irq_data *data, const struct cpumask *dest,
     bool force)
{
 struct msi_desc *entry = irq_get_msi_desc(data->irq);
 struct msi_msg msg = entry->msg;

 msg.address_lo &= 0xff0000ff;
 msg.address_lo |= (cpumask_first(dest) << 8);
 pci_write_msi_msg(data->irq, &msg);

 return IRQ_SET_MASK_OK;
}
