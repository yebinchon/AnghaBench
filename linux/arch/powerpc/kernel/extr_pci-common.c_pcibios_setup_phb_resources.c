
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; } ;
struct pci_controller {scalar_t__* mem_offset; struct resource* mem_resources; int global_number; int dn; struct resource io_resource; } ;
struct list_head {int dummy; } ;
typedef scalar_t__ resource_size_t ;


 int pci_add_resource_offset (struct list_head*,struct resource*,scalar_t__) ;
 scalar_t__ pcibios_io_space_offset (struct pci_controller*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void pcibios_setup_phb_resources(struct pci_controller *hose,
     struct list_head *resources)
{
 struct resource *res;
 resource_size_t offset;
 int i;


 res = &hose->io_resource;

 if (!res->flags) {
  pr_debug("PCI: I/O resource not set for host"
    " bridge %pOF (domain %d)\n",
    hose->dn, hose->global_number);
 } else {
  offset = pcibios_io_space_offset(hose);

  pr_debug("PCI: PHB IO resource    = %pR off 0x%08llx\n",
    res, (unsigned long long)offset);
  pci_add_resource_offset(resources, res, offset);
 }


 for (i = 0; i < 3; ++i) {
  res = &hose->mem_resources[i];
  if (!res->flags)
   continue;

  offset = hose->mem_offset[i];
  pr_debug("PCI: PHB MEM resource %d = %pR off 0x%08llx\n", i,
    res, (unsigned long long)offset);

  pci_add_resource_offset(resources, res, offset);
 }
}
