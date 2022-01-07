
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m32_pci_base; } ;
struct pnv_phb {TYPE_1__ ioda; } ;
struct TYPE_4__ {int * ops; int pgsizes; int max_levels; int max_dynamic_windows_supported; int tce32_size; scalar_t__ tce32_start; } ;
struct pnv_ioda_pe {unsigned long long tce_bypass_base; int flags; int pbus; TYPE_2__ table_group; } ;
typedef scalar_t__ int64_t ;


 int IOMMU_TABLE_GROUP_MAX_TABLES ;
 int PNV_IODA_PE_BUS ;
 int PNV_IODA_PE_BUS_ALL ;
 int POWERNV_IOMMU_MAX_LEVELS ;
 int pe_info (struct pnv_ioda_pe*,char*,int ) ;
 int pnv_ioda_parse_tce_sizes (struct pnv_phb*) ;
 int pnv_ioda_setup_bus_dma (struct pnv_ioda_pe*,int ) ;
 int pnv_pci_ioda2_ops ;
 scalar_t__ pnv_pci_ioda2_setup_default_config (struct pnv_ioda_pe*) ;
 int pnv_pci_ioda_pe_dma_weight (struct pnv_ioda_pe*) ;

__attribute__((used)) static void pnv_pci_ioda2_setup_dma_pe(struct pnv_phb *phb,
           struct pnv_ioda_pe *pe)
{
 int64_t rc;

 if (!pnv_pci_ioda_pe_dma_weight(pe))
  return;


 pe->tce_bypass_base = 1ull << 59;


 pe_info(pe, "Setting up 32-bit TCE table at 0..%08x\n",
  phb->ioda.m32_pci_base);


 pe->table_group.tce32_start = 0;
 pe->table_group.tce32_size = phb->ioda.m32_pci_base;
 pe->table_group.max_dynamic_windows_supported =
   IOMMU_TABLE_GROUP_MAX_TABLES;
 pe->table_group.max_levels = POWERNV_IOMMU_MAX_LEVELS;
 pe->table_group.pgsizes = pnv_ioda_parse_tce_sizes(phb);




 rc = pnv_pci_ioda2_setup_default_config(pe);
 if (rc)
  return;

 if (pe->flags & (PNV_IODA_PE_BUS | PNV_IODA_PE_BUS_ALL))
  pnv_ioda_setup_bus_dma(pe, pe->pbus);
}
