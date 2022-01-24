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
struct zpci_dev {int /*<<< orphan*/  iommu_bitmap_lock; int /*<<< orphan*/  iommu_pages; int /*<<< orphan*/  lazy_bitmap; int /*<<< orphan*/  iommu_bitmap; scalar_t__ fh; int /*<<< orphan*/  tlb_refresh; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int ZPCI_PTE_VALID ; 
 int ZPCI_PTE_VALID_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s390_iommu_strict ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (struct zpci_dev*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct zpci_dev *zdev, dma_addr_t dma_addr,
			   size_t size, int flags)
{
	unsigned long irqflags;
	int ret;

	/*
	 * With zdev->tlb_refresh == 0, rpcit is not required to establish new
	 * translations when previously invalid translation-table entries are
	 * validated. With lazy unmap, rpcit is skipped for previously valid
	 * entries, but a global rpcit is then required before any address can
	 * be re-used, i.e. after each iommu bitmap wrap-around.
	 */
	if ((flags & ZPCI_PTE_VALID_MASK) == ZPCI_PTE_VALID) {
		if (!zdev->tlb_refresh)
			return 0;
	} else {
		if (!s390_iommu_strict)
			return 0;
	}

	ret = FUNC6((u64) zdev->fh << 32, dma_addr,
				 FUNC0(size));
	if (ret == -ENOMEM && !s390_iommu_strict) {
		/* enable the hypervisor to free some resources */
		if (FUNC5(zdev))
			goto out;

		FUNC3(&zdev->iommu_bitmap_lock, irqflags);
		FUNC1(zdev->iommu_bitmap, zdev->iommu_bitmap,
			      zdev->lazy_bitmap, zdev->iommu_pages);
		FUNC2(zdev->lazy_bitmap, zdev->iommu_pages);
		FUNC4(&zdev->iommu_bitmap_lock, irqflags);
		ret = 0;
	}
out:
	return ret;
}