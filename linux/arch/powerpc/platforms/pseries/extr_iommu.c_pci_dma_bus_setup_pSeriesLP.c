
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dn {struct device_node* table_group; TYPE_1__* phb; } ;
struct pci_bus {int dummy; } ;
struct iommu_table {int * it_ops; } ;
struct device_node {struct iommu_table** tables; struct device_node* parent; } ;
typedef int __be32 ;
struct TYPE_2__ {int node; } ;


 struct pci_dn* PCI_DN (struct device_node*) ;
 int iommu_init_table (struct iommu_table*,int ,int ,int ) ;
 struct device_node* iommu_pseries_alloc_group (int ) ;
 int iommu_register_group (struct device_node*,int ,int ) ;
 int iommu_table_lpar_multi_ops ;
 int iommu_table_setparms_lpar (TYPE_1__*,struct device_node*,struct iommu_table*,struct device_node*,int const*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 struct device_node* pci_bus_to_OF_node (struct pci_bus*) ;
 int pci_domain_nr (struct pci_bus*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void pci_dma_bus_setup_pSeriesLP(struct pci_bus *bus)
{
 struct iommu_table *tbl;
 struct device_node *dn, *pdn;
 struct pci_dn *ppci;
 const __be32 *dma_window = ((void*)0);

 dn = pci_bus_to_OF_node(bus);

 pr_debug("pci_dma_bus_setup_pSeriesLP: setting up bus %pOF\n",
   dn);


 for (pdn = dn; pdn != ((void*)0); pdn = pdn->parent) {
  dma_window = of_get_property(pdn, "ibm,dma-window", ((void*)0));
  if (dma_window != ((void*)0))
   break;
 }

 if (dma_window == ((void*)0)) {
  pr_debug("  no ibm,dma-window property !\n");
  return;
 }

 ppci = PCI_DN(pdn);

 pr_debug("  parent is %pOF, iommu_table: 0x%p\n",
   pdn, ppci->table_group);

 if (!ppci->table_group) {
  ppci->table_group = iommu_pseries_alloc_group(ppci->phb->node);
  tbl = ppci->table_group->tables[0];
  iommu_table_setparms_lpar(ppci->phb, pdn, tbl,
    ppci->table_group, dma_window);
  tbl->it_ops = &iommu_table_lpar_multi_ops;
  iommu_init_table(tbl, ppci->phb->node, 0, 0);
  iommu_register_group(ppci->table_group,
    pci_domain_nr(bus), 0);
  pr_debug("  created table: %p\n", ppci->table_group);
 }
}
