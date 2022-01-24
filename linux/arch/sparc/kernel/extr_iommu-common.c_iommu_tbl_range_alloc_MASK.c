#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iommu_pool {unsigned long start; unsigned long end; unsigned long hint; int /*<<< orphan*/  lock; } ;
struct iommu_map_table {unsigned int nr_pools; int flags; unsigned long table_map_base; unsigned long table_shift; unsigned long poolsize; int /*<<< orphan*/  (* lazy_flush ) (struct iommu_map_table*) ;struct iommu_pool* pools; int /*<<< orphan*/  map; struct iommu_pool large_pool; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long long,int) ; 
 unsigned int BITS_PER_LONG ; 
 unsigned long IOMMU_ERROR_CODE ; 
 int IOMMU_HAS_LARGE_POOL ; 
 int IOMMU_NO_SPAN_BOUND ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu_map_table*) ; 
 unsigned long long FUNC4 (struct device*) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  iommu_hash_common ; 
 unsigned long iommu_large_alloc ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct iommu_map_table*) ; 
 int /*<<< orphan*/  FUNC8 (struct iommu_map_table*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct iommu_map_table*) ; 
 scalar_t__ FUNC14 (int) ; 

unsigned long FUNC15(struct device *dev,
				struct iommu_map_table *iommu,
				unsigned long npages,
				unsigned long *handle,
				unsigned long mask,
				unsigned int align_order)
{
	unsigned int pool_hash = FUNC2(iommu_hash_common);
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

	/* Sanity check */
	if (FUNC14(npages == 0)) {
		FUNC1(1);
		return IOMMU_ERROR_CODE;
	}

	if (largealloc) {
		pool = &(iommu->large_pool);
		pool_nr = 0; /* to keep compiler happy */
	} else {
		/* pick out pool_nr */
		pool_nr =  pool_hash & (npools - 1);
		pool = &(iommu->pools[pool_nr]);
	}
	FUNC10(&pool->lock, flags);

 again:
	if (pass == 0 && handle && *handle &&
	    (*handle >= pool->start) && (*handle < pool->end))
		start = *handle;
	else
		start = pool->hint;

	limit = pool->end;

	/* The case below can happen if we have a small segment appended
	 * to a large, or when the previous alloc was at the very end of
	 * the available space. If so, go back to the beginning. If a
	 * flush is needed, it will get done based on the return value
	 * from iommu_area_alloc() below.
	 */
	if (start >= limit)
		start = pool->start;
	shift = iommu->table_map_base >> iommu->table_shift;
	if (limit + shift > mask) {
		limit = mask - shift + 1;
		/* If we're constrained on address range, first try
		 * at the masked hint to avoid O(n) search complexity,
		 * but on second pass, start at 0 in pool 0.
		 */
		if ((start & mask) >= limit || pass > 0) {
			FUNC11(&(pool->lock));
			pool = &(iommu->pools[0]);
			FUNC9(&(pool->lock));
			start = pool->start;
		} else {
			start &= mask;
		}
	}

	if (dev)
		boundary_size = FUNC0(FUNC4(dev) + 1,
				      1 << iommu->table_shift);
	else
		boundary_size = FUNC0(1ULL << 32, 1 << iommu->table_shift);

	boundary_size = boundary_size >> iommu->table_shift;
	/*
	 * if the skip_span_boundary_check had been set during init, we set
	 * things up so that iommu_is_span_boundary() merely checks if the
	 * (index + npages) < num_tsb_entries
	 */
	if ((iommu->flags & IOMMU_NO_SPAN_BOUND) != 0) {
		shift = 0;
		boundary_size = iommu->poolsize * iommu->nr_pools;
	}
	n = FUNC5(iommu->map, limit, start, npages, shift,
			     boundary_size, align_mask);
	if (n == -1) {
		if (FUNC6(pass == 0)) {
			/* First failure, rescan from the beginning.  */
			pool->hint = pool->start;
			FUNC8(iommu);
			pass++;
			goto again;
		} else if (!largealloc && pass <= iommu->nr_pools) {
			FUNC11(&(pool->lock));
			pool_nr = (pool_nr + 1) & (iommu->nr_pools - 1);
			pool = &(iommu->pools[pool_nr]);
			FUNC9(&(pool->lock));
			pool->hint = pool->start;
			FUNC8(iommu);
			pass++;
			goto again;
		} else {
			/* give up */
			n = IOMMU_ERROR_CODE;
			goto bail;
		}
	}
	if (iommu->lazy_flush &&
	    (n < pool->hint || FUNC7(iommu))) {
		FUNC3(iommu);
		iommu->lazy_flush(iommu);
	}

	end = n + npages;
	pool->hint = end;

	/* Update handle for SG allocations */
	if (handle)
		*handle = end;
bail:
	FUNC12(&(pool->lock), flags);

	return n;
}