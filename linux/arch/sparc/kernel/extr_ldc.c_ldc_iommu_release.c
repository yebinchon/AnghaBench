
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_mtable_entry {int dummy; } ;
struct iommu_map_table {unsigned long poolsize; unsigned long nr_pools; int * map; } ;
struct ldc_iommu {int * page_table; struct iommu_map_table iommu_map_table; } ;
struct ldc_channel {int id; struct ldc_iommu iommu; } ;


 int free_pages (unsigned long,unsigned long) ;
 unsigned long get_order (unsigned long) ;
 int kfree (int *) ;
 int sun4v_ldc_set_map_table (int ,int ,int ) ;

__attribute__((used)) static void ldc_iommu_release(struct ldc_channel *lp)
{
 struct ldc_iommu *ldc_iommu = &lp->iommu;
 struct iommu_map_table *iommu = &ldc_iommu->iommu_map_table;
 unsigned long num_tsb_entries, tsbsize, order;

 (void) sun4v_ldc_set_map_table(lp->id, 0, 0);

 num_tsb_entries = iommu->poolsize * iommu->nr_pools;
 tsbsize = num_tsb_entries * sizeof(struct ldc_mtable_entry);
 order = get_order(tsbsize);

 free_pages((unsigned long) ldc_iommu->page_table, order);
 ldc_iommu->page_table = ((void*)0);

 kfree(iommu->map);
 iommu->map = ((void*)0);
}
