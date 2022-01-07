
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ group; struct iommu_table** tables; } ;
struct pnv_ioda_pe {TYPE_1__ table_group; } ;
struct iommu_table {int it_size; int it_base; int it_offset; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ OPAL_SUCCESS ;
 int WARN_ON (scalar_t__) ;
 int free_pages (int ,int ) ;
 int get_order (int) ;
 int iommu_group_put (scalar_t__) ;
 int iommu_tce_table_put (struct iommu_table*) ;
 scalar_t__ pnv_pci_ioda1_unset_window (TYPE_1__*,int ) ;
 unsigned int pnv_pci_ioda_pe_dma_weight (struct pnv_ioda_pe*) ;
 int pnv_pci_p7ioc_tce_invalidate (struct iommu_table*,int ,int,int) ;

__attribute__((used)) static void pnv_pci_ioda1_release_pe_dma(struct pnv_ioda_pe *pe)
{
 unsigned int weight = pnv_pci_ioda_pe_dma_weight(pe);
 struct iommu_table *tbl = pe->table_group.tables[0];
 int64_t rc;

 if (!weight)
  return;

 rc = pnv_pci_ioda1_unset_window(&pe->table_group, 0);
 if (rc != OPAL_SUCCESS)
  return;

 pnv_pci_p7ioc_tce_invalidate(tbl, tbl->it_offset, tbl->it_size, 0);
 if (pe->table_group.group) {
  iommu_group_put(pe->table_group.group);
  WARN_ON(pe->table_group.group);
 }

 free_pages(tbl->it_base, get_order(tbl->it_size << 3));
 iommu_tce_table_put(tbl);
}
