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
typedef  int u64 ;
struct iommu_table {int it_offset; int it_page_shift; } ;
struct TYPE_2__ {int iommu_bypass; } ;
struct device {TYPE_1__ archdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct device*,int) ; 
 struct iommu_table* FUNC5 (struct device*) ; 

int FUNC6(struct device *dev, u64 mask)
{
	struct iommu_table *tbl = FUNC5(dev);

	if (FUNC3(dev) && FUNC4(dev, mask)) {
		dev->archdata.iommu_bypass = true;
		FUNC0(dev, "iommu: 64-bit OK, using fixed ops\n");
		return 1;
	}

	if (!tbl) {
		FUNC1(dev, "Warning: IOMMU dma not supported: mask 0x%08llx, table unavailable\n", mask);
		return 0;
	}

	if (tbl->it_offset > (mask >> tbl->it_page_shift)) {
		FUNC2(dev, "Warning: IOMMU offset too big for device mask\n");
		FUNC2(dev, "mask: 0x%08llx, table offset: 0x%08lx\n",
				mask, tbl->it_offset << tbl->it_page_shift);
		return 0;
	}

	FUNC0(dev, "iommu: not 64-bit, using default ops\n");
	dev->archdata.iommu_bypass = false;
	return 1;
}