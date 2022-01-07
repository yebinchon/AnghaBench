
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxnas_pcie {struct oxnas_pcie** private_data; } ;
struct hw_pci {int nr_controllers; int * ops; int map_irq; int setup; struct oxnas_pcie** private_data; } ;
struct device {int dummy; } ;
typedef int hw ;


 int NUM_CONTROLLERS ;
 int memset (struct hw_pci*,int ,int) ;
 int of_irq_parse_and_map_pci ;
 int oxnas_pcie_ops ;
 int oxnas_pcie_setup ;
 int pci_common_init_dev (struct device*,struct hw_pci*) ;

__attribute__((used)) static void oxnas_pcie_enable(struct device *dev, struct oxnas_pcie *pcie)
{
 struct hw_pci hw;
 int i;

 memset(&hw, 0, sizeof(hw));
 for (i = 0; i < NUM_CONTROLLERS; i++)
  pcie->private_data[i] = pcie;

 hw.nr_controllers = NUM_CONTROLLERS;

 hw.private_data = pcie->private_data;
 hw.setup = oxnas_pcie_setup;
 hw.map_irq = of_irq_parse_and_map_pci;
 hw.ops = &oxnas_pcie_ops;


 pci_common_init_dev(dev, &hw);
}
