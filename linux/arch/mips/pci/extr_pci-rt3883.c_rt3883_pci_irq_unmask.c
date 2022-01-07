
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt3883_pci_controller {int dummy; } ;
struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 int RT3883_PCI_REG_PCIENA ;
 struct rt3883_pci_controller* irq_data_get_irq_chip_data (struct irq_data*) ;
 int rt3883_pci_r32 (struct rt3883_pci_controller*,int ) ;
 int rt3883_pci_w32 (struct rt3883_pci_controller*,int,int ) ;

__attribute__((used)) static void rt3883_pci_irq_unmask(struct irq_data *d)
{
 struct rt3883_pci_controller *rpc;
 u32 t;

 rpc = irq_data_get_irq_chip_data(d);

 t = rt3883_pci_r32(rpc, RT3883_PCI_REG_PCIENA);
 rt3883_pci_w32(rpc, t | BIT(d->hwirq), RT3883_PCI_REG_PCIENA);

 rt3883_pci_r32(rpc, RT3883_PCI_REG_PCIENA);
}
