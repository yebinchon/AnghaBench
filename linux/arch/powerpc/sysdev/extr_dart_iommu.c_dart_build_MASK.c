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
struct iommu_table {scalar_t__ it_base; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 unsigned int DARTMAP_RPNMASK ; 
 unsigned int DARTMAP_VALID ; 
 unsigned int DART_PAGE_SHIFT ; 
 scalar_t__ DART_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,long,long,unsigned long) ; 
 unsigned int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,long) ; 
 int dart_dirty ; 
 scalar_t__ dart_is_u4 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct iommu_table *tbl, long index,
		       long npages, unsigned long uaddr,
		       enum dma_data_direction direction,
		       unsigned long attrs)
{
	unsigned int *dp, *orig_dp;
	unsigned int rpn;
	long l;

	FUNC0("dart: build at: %lx, %lx, addr: %x\n", index, npages, uaddr);

	orig_dp = dp = ((unsigned int*)tbl->it_base) + index;

	/* On U3, all memory is contiguous, so we can move this
	 * out of the loop.
	 */
	l = npages;
	while (l--) {
		rpn = FUNC1(uaddr) >> DART_PAGE_SHIFT;

		*(dp++) = DARTMAP_VALID | (rpn & DARTMAP_RPNMASK);

		uaddr += DART_PAGE_SIZE;
	}
	FUNC2(orig_dp, npages);

	if (dart_is_u4) {
		rpn = index;
		while (npages--)
			FUNC3(rpn++);
	} else {
		dart_dirty = 1;
	}
	return 0;
}