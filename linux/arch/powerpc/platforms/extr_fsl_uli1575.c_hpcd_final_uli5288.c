
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int irq; int bus; } ;
struct pci_controller {int first_busno; struct device_node* dn; } ;
struct of_phandle_args {int* args; int args_count; struct device_node* np; } ;
struct device_node {int dummy; } ;


 int PCI_DEVFN (int,int ) ;
 int irq_create_of_mapping (struct of_phandle_args*) ;
 int machine_is (int ) ;
 int mpc86xx_hpcd ;
 int of_irq_parse_raw (int*,struct of_phandle_args*) ;
 struct pci_controller* pci_bus_to_host (int ) ;

__attribute__((used)) static void hpcd_final_uli5288(struct pci_dev *dev)
{
 struct pci_controller *hose = pci_bus_to_host(dev->bus);
 struct device_node *hosenode = hose ? hose->dn : ((void*)0);
 struct of_phandle_args oirq;
 u32 laddr[3];

 if (!machine_is(mpc86xx_hpcd))
  return;

 if (!hosenode)
  return;

 oirq.np = hosenode;
 oirq.args[0] = 2;
 oirq.args_count = 1;
 laddr[0] = (hose->first_busno << 16) | (PCI_DEVFN(31, 0) << 8);
 laddr[1] = laddr[2] = 0;
 of_irq_parse_raw(laddr, &oirq);
 dev->irq = irq_create_of_mapping(&oirq);
}
