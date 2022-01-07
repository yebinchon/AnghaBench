
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnv_phb {int msi32_support; void* msi_base; int msi_setup; TYPE_1__* hose; int msi_bmp; } ;
typedef int __be32 ;
struct TYPE_2__ {int global_number; int dn; } ;


 void* be32_to_cpup (int const*) ;
 scalar_t__ msi_bitmap_alloc (int *,unsigned int,int ) ;
 int * of_get_property (int ,char*,int *) ;
 int pnv_pci_ioda_msi_setup ;
 int pr_err (char*,int ) ;
 int pr_info (char*,unsigned int,void*) ;

__attribute__((used)) static void pnv_pci_init_ioda_msis(struct pnv_phb *phb)
{
 unsigned int count;
 const __be32 *prop = of_get_property(phb->hose->dn,
          "ibm,opal-msi-ranges", ((void*)0));
 if (!prop) {

  prop = of_get_property(phb->hose->dn, "msi-ranges", ((void*)0));
 }
 if (!prop)
  return;

 phb->msi_base = be32_to_cpup(prop);
 count = be32_to_cpup(prop + 1);
 if (msi_bitmap_alloc(&phb->msi_bmp, count, phb->hose->dn)) {
  pr_err("PCI %d: Failed to allocate MSI bitmap !\n",
         phb->hose->global_number);
  return;
 }

 phb->msi_setup = pnv_pci_ioda_msi_setup;
 phb->msi32_support = 1;
 pr_info("  Allocated bitmap for %d MSIs (base IRQ 0x%x)\n",
  count, phb->msi_base);
}
