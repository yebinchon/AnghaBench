
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ group; struct iommu_table** tables; } ;
struct pnv_ioda_pe {TYPE_1__ table_group; } ;
struct iommu_table {int dummy; } ;
typedef scalar_t__ int64_t ;


 int WARN_ON (scalar_t__) ;
 int iommu_group_put (scalar_t__) ;
 int iommu_tce_table_put (struct iommu_table*) ;
 int pe_warn (struct pnv_ioda_pe*,char*,scalar_t__) ;
 int pnv_pci_ioda2_set_bypass (struct pnv_ioda_pe*,int) ;
 scalar_t__ pnv_pci_ioda2_unset_window (TYPE_1__*,int ) ;
 unsigned int pnv_pci_ioda_pe_dma_weight (struct pnv_ioda_pe*) ;

__attribute__((used)) static void pnv_pci_ioda2_release_pe_dma(struct pnv_ioda_pe *pe)
{
 struct iommu_table *tbl = pe->table_group.tables[0];
 unsigned int weight = pnv_pci_ioda_pe_dma_weight(pe);




 if (!weight)
  return;







 pnv_pci_ioda2_set_bypass(pe, 0);
 if (pe->table_group.group) {
  iommu_group_put(pe->table_group.group);
  WARN_ON(pe->table_group.group);
 }

 iommu_tce_table_put(tbl);
}
