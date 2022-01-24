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
struct zpci_dev {unsigned long next_bit; int /*<<< orphan*/  iommu_bitmap_lock; scalar_t__ start_dma; int /*<<< orphan*/  iommu_pages; int /*<<< orphan*/  lazy_bitmap; int /*<<< orphan*/  iommu_bitmap; } ;
struct device {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ DMA_MAPPING_ERROR ; 
 unsigned long PAGE_SIZE ; 
 unsigned long FUNC0 (struct device*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s390_iommu_strict ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 struct zpci_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct zpci_dev*) ; 

__attribute__((used)) static dma_addr_t FUNC8(struct device *dev, int size)
{
	struct zpci_dev *zdev = FUNC6(FUNC5(dev));
	unsigned long offset, flags;

	FUNC3(&zdev->iommu_bitmap_lock, flags);
	offset = FUNC0(dev, zdev->next_bit, size);
	if (offset == -1) {
		if (!s390_iommu_strict) {
			/* global flush before DMA addresses are reused */
			if (FUNC7(zdev))
				goto out_error;

			FUNC1(zdev->iommu_bitmap, zdev->iommu_bitmap,
				      zdev->lazy_bitmap, zdev->iommu_pages);
			FUNC2(zdev->lazy_bitmap, zdev->iommu_pages);
		}
		/* wrap-around */
		offset = FUNC0(dev, 0, size);
		if (offset == -1)
			goto out_error;
	}
	zdev->next_bit = offset + size;
	FUNC4(&zdev->iommu_bitmap_lock, flags);

	return zdev->start_dma + offset * PAGE_SIZE;

out_error:
	FUNC4(&zdev->iommu_bitmap_lock, flags);
	return DMA_MAPPING_ERROR;
}