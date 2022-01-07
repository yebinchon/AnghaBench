
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt3883_pci_controller {int irq_domain; int intc_of_node; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int RT3883_PCI_IRQ_COUNT ;
 int RT3883_PCI_REG_PCIENA ;
 int dev_err (struct device*,char*,...) ;
 int irq_domain_add_linear (int ,int ,int *,struct rt3883_pci_controller*) ;
 int irq_of_parse_and_map (int ,int ) ;
 int irq_set_chained_handler_and_data (int,int ,struct rt3883_pci_controller*) ;
 int rt3883_pci_irq_domain_ops ;
 int rt3883_pci_irq_handler ;
 int rt3883_pci_w32 (struct rt3883_pci_controller*,int ,int ) ;

__attribute__((used)) static int rt3883_pci_irq_init(struct device *dev,
          struct rt3883_pci_controller *rpc)
{
 int irq;

 irq = irq_of_parse_and_map(rpc->intc_of_node, 0);
 if (irq == 0) {
  dev_err(dev, "%pOF has no IRQ", rpc->intc_of_node);
  return -EINVAL;
 }


 rt3883_pci_w32(rpc, 0, RT3883_PCI_REG_PCIENA);

 rpc->irq_domain =
  irq_domain_add_linear(rpc->intc_of_node, RT3883_PCI_IRQ_COUNT,
          &rt3883_pci_irq_domain_ops,
          rpc);
 if (!rpc->irq_domain) {
  dev_err(dev, "unable to add IRQ domain\n");
  return -ENODEV;
 }

 irq_set_chained_handler_and_data(irq, rt3883_pci_irq_handler, rpc);

 return 0;
}
