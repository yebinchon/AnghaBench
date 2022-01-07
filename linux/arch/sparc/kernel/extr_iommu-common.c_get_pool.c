
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_pool {unsigned long start; } ;
struct iommu_map_table {int flags; unsigned long poolsize; unsigned int nr_pools; struct iommu_pool* pools; struct iommu_pool large_pool; } ;


 int BUG_ON (int) ;
 int IOMMU_HAS_LARGE_POOL ;

__attribute__((used)) static struct iommu_pool *get_pool(struct iommu_map_table *tbl,
       unsigned long entry)
{
 struct iommu_pool *p;
 unsigned long largepool_start = tbl->large_pool.start;
 bool large_pool = ((tbl->flags & IOMMU_HAS_LARGE_POOL) != 0);


 if (large_pool && entry >= largepool_start) {
  p = &tbl->large_pool;
 } else {
  unsigned int pool_nr = entry / tbl->poolsize;

  BUG_ON(pool_nr >= tbl->nr_pools);
  p = &tbl->pools[pool_nr];
 }
 return p;
}
