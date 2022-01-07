
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_pool {unsigned long start; unsigned long end; unsigned long hint; int lock; } ;
struct iommu_map_table {unsigned int nr_pools; int flags; unsigned long table_map_base; unsigned long table_shift; unsigned long poolsize; int (* lazy_flush ) (struct iommu_map_table*) ;struct iommu_pool* pools; int map; struct iommu_pool large_pool; } ;
struct device {int dummy; } ;


 unsigned long ALIGN (unsigned long long,int) ;
 unsigned int BITS_PER_LONG ;
 unsigned long IOMMU_ERROR_CODE ;
 int IOMMU_HAS_LARGE_POOL ;
 int IOMMU_NO_SPAN_BOUND ;
 int WARN_ON_ONCE (int) ;
 unsigned int __this_cpu_read (int ) ;
 int clear_flush (struct iommu_map_table*) ;
 unsigned long long dma_get_seg_boundary (struct device*) ;
 unsigned long iommu_area_alloc (int ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int iommu_hash_common ;
 unsigned long iommu_large_alloc ;
 scalar_t__ likely (int) ;
 scalar_t__ need_flush (struct iommu_map_table*) ;
 int set_flush (struct iommu_map_table*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct iommu_map_table*) ;
 scalar_t__ unlikely (int) ;

unsigned long iommu_tbl_range_alloc(struct device *dev,
    struct iommu_map_table *iommu,
    unsigned long npages,
    unsigned long *handle,
    unsigned long mask,
    unsigned int align_order)
{
 unsigned int pool_hash = __this_cpu_read(iommu_hash_common);
 unsigned long n, end, start, limit, boundary_size;
 struct iommu_pool *pool;
 int pass = 0;
 unsigned int pool_nr;
 unsigned int npools = iommu->nr_pools;
 unsigned long flags;
 bool large_pool = ((iommu->flags & IOMMU_HAS_LARGE_POOL) != 0);
 bool largealloc = (large_pool && npages > iommu_large_alloc);
 unsigned long shift;
 unsigned long align_mask = 0;

 if (align_order > 0)
  align_mask = ~0ul >> (BITS_PER_LONG - align_order);


 if (unlikely(npages == 0)) {
  WARN_ON_ONCE(1);
  return IOMMU_ERROR_CODE;
 }

 if (largealloc) {
  pool = &(iommu->large_pool);
  pool_nr = 0;
 } else {

  pool_nr = pool_hash & (npools - 1);
  pool = &(iommu->pools[pool_nr]);
 }
 spin_lock_irqsave(&pool->lock, flags);

 again:
 if (pass == 0 && handle && *handle &&
     (*handle >= pool->start) && (*handle < pool->end))
  start = *handle;
 else
  start = pool->hint;

 limit = pool->end;







 if (start >= limit)
  start = pool->start;
 shift = iommu->table_map_base >> iommu->table_shift;
 if (limit + shift > mask) {
  limit = mask - shift + 1;




  if ((start & mask) >= limit || pass > 0) {
   spin_unlock(&(pool->lock));
   pool = &(iommu->pools[0]);
   spin_lock(&(pool->lock));
   start = pool->start;
  } else {
   start &= mask;
  }
 }

 if (dev)
  boundary_size = ALIGN(dma_get_seg_boundary(dev) + 1,
          1 << iommu->table_shift);
 else
  boundary_size = ALIGN(1ULL << 32, 1 << iommu->table_shift);

 boundary_size = boundary_size >> iommu->table_shift;





 if ((iommu->flags & IOMMU_NO_SPAN_BOUND) != 0) {
  shift = 0;
  boundary_size = iommu->poolsize * iommu->nr_pools;
 }
 n = iommu_area_alloc(iommu->map, limit, start, npages, shift,
        boundary_size, align_mask);
 if (n == -1) {
  if (likely(pass == 0)) {

   pool->hint = pool->start;
   set_flush(iommu);
   pass++;
   goto again;
  } else if (!largealloc && pass <= iommu->nr_pools) {
   spin_unlock(&(pool->lock));
   pool_nr = (pool_nr + 1) & (iommu->nr_pools - 1);
   pool = &(iommu->pools[pool_nr]);
   spin_lock(&(pool->lock));
   pool->hint = pool->start;
   set_flush(iommu);
   pass++;
   goto again;
  } else {

   n = IOMMU_ERROR_CODE;
   goto bail;
  }
 }
 if (iommu->lazy_flush &&
     (n < pool->hint || need_flush(iommu))) {
  clear_flush(iommu);
  iommu->lazy_flush(iommu);
 }

 end = n + npages;
 pool->hint = end;


 if (handle)
  *handle = end;
bail:
 spin_unlock_irqrestore(&(pool->lock), flags);

 return n;
}
