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
struct zpci_dev {unsigned long start_dma; int /*<<< orphan*/  iommu_bitmap_lock; int /*<<< orphan*/  lazy_bitmap; int /*<<< orphan*/  iommu_bitmap; } ;
struct device {int dummy; } ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,int) ; 
 scalar_t__ s390_iommu_strict ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct zpci_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct device *dev, dma_addr_t dma_addr, int size)
{
	struct zpci_dev *zdev = FUNC5(FUNC4(dev));
	unsigned long flags, offset;

	offset = (dma_addr - zdev->start_dma) >> PAGE_SHIFT;

	FUNC2(&zdev->iommu_bitmap_lock, flags);
	if (!zdev->iommu_bitmap)
		goto out;

	if (s390_iommu_strict)
		FUNC0(zdev->iommu_bitmap, offset, size);
	else
		FUNC1(zdev->lazy_bitmap, offset, size);

out:
	FUNC3(&zdev->iommu_bitmap_lock, flags);
}