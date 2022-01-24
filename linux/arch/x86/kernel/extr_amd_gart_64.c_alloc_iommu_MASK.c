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
typedef  int u64 ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct device*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long,int,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  iommu_bitmap_lock ; 
 int iommu_bus_base ; 
 scalar_t__ iommu_fullflush ; 
 int /*<<< orphan*/  iommu_gart_bitmap ; 
 unsigned long iommu_pages ; 
 int need_flush ; 
 unsigned long next_bit ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC5(struct device *dev, int size,
				 unsigned long align_mask)
{
	unsigned long offset, flags;
	unsigned long boundary_size;
	unsigned long base_index;

	base_index = FUNC0(iommu_bus_base & FUNC1(dev),
			   PAGE_SIZE) >> PAGE_SHIFT;
	boundary_size = FUNC0((u64)FUNC1(dev) + 1,
			      PAGE_SIZE) >> PAGE_SHIFT;

	FUNC3(&iommu_bitmap_lock, flags);
	offset = FUNC2(iommu_gart_bitmap, iommu_pages, next_bit,
				  size, base_index, boundary_size, align_mask);
	if (offset == -1) {
		need_flush = true;
		offset = FUNC2(iommu_gart_bitmap, iommu_pages, 0,
					  size, base_index, boundary_size,
					  align_mask);
	}
	if (offset != -1) {
		next_bit = offset+size;
		if (next_bit >= iommu_pages) {
			next_bit = 0;
			need_flush = true;
		}
	}
	if (iommu_fullflush)
		need_flush = true;
	FUNC4(&iommu_bitmap_lock, flags);

	return offset;
}