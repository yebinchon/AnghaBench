#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iommu_table {unsigned long it_size; unsigned long it_hint; int /*<<< orphan*/  it_lock; int /*<<< orphan*/  it_map; TYPE_1__* chip_ops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tce_cache_blast ) (struct iommu_table*) ;} ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long DMA_MAPPING_ERROR ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct device*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ panic_on_overflow ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct iommu_table*) ; 

__attribute__((used)) static unsigned long FUNC9(struct device *dev,
				       struct iommu_table *tbl,
				       unsigned int npages)
{
	unsigned long flags;
	unsigned long offset;
	unsigned long boundary_size;

	boundary_size = FUNC0(FUNC2(dev) + 1,
			      PAGE_SIZE) >> PAGE_SHIFT;

	FUNC1(npages == 0);

	FUNC6(&tbl->it_lock, flags);

	offset = FUNC3(tbl->it_map, tbl->it_size, tbl->it_hint,
				  npages, 0, boundary_size, 0);
	if (offset == ~0UL) {
		tbl->chip_ops->tce_cache_blast(tbl);

		offset = FUNC3(tbl->it_map, tbl->it_size, 0,
					  npages, 0, boundary_size, 0);
		if (offset == ~0UL) {
			FUNC5("IOMMU full\n");
			FUNC7(&tbl->it_lock, flags);
			if (panic_on_overflow)
				FUNC4("Calgary: fix the allocator.\n");
			else
				return DMA_MAPPING_ERROR;
		}
	}

	tbl->it_hint = offset + npages;
	FUNC1(tbl->it_hint > tbl->it_size);

	FUNC7(&tbl->it_lock, flags);

	return offset;
}