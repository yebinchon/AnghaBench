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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ dma_offset; } ;
struct device {TYPE_1__ archdata; } ;

/* Variables and functions */
 scalar_t__ OF_BAD_ADDR ; 
 scalar_t__ cell_dma_nommu_offset ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 scalar_t__ cell_iommu_enabled ; 
 scalar_t__ FUNC1 (struct device*) ; 
 scalar_t__ dma_iommu_fixed_base ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	if (cell_iommu_enabled) {
		u64 addr = FUNC1(dev);

		if (addr != OF_BAD_ADDR)
			dev->archdata.dma_offset = addr + dma_iommu_fixed_base;
		FUNC2(dev, FUNC0(dev));
	} else {
		dev->archdata.dma_offset = cell_dma_nommu_offset;
	}
}