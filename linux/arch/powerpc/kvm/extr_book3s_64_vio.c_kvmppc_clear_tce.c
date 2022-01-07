
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct iommu_table {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_NONE ;
 int iommu_tce_xchg_no_kill (struct mm_struct*,struct iommu_table*,unsigned long,unsigned long*,int*) ;

__attribute__((used)) static void kvmppc_clear_tce(struct mm_struct *mm, struct iommu_table *tbl,
  unsigned long entry)
{
 unsigned long hpa = 0;
 enum dma_data_direction dir = DMA_NONE;

 iommu_tce_xchg_no_kill(mm, tbl, entry, &hpa, &dir);
}
