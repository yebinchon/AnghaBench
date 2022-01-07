
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pnv_eeh_post_init () ;
 int pnv_pci_enable_bridges () ;
 int pnv_pci_ioda_create_dbgfs () ;
 int pnv_pci_ioda_setup_PEs () ;
 int pnv_pci_ioda_setup_iommu_api () ;

__attribute__((used)) static void pnv_pci_ioda_fixup(void)
{
 pnv_pci_ioda_setup_PEs();
 pnv_pci_ioda_setup_iommu_api();
 pnv_pci_ioda_create_dbgfs();

 pnv_pci_enable_bridges();




}
