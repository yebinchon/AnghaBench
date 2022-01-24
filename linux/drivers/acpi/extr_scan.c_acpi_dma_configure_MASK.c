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
typedef  int /*<<< orphan*/  u64 ;
struct iommu_ops {int dummy; } ;
struct device {int dummy; } ;
typedef  enum dev_dma_attr { ____Placeholder_dev_dma_attr } dev_dma_attr ;

/* Variables and functions */
 int DEV_DMA_COHERENT ; 
 int DEV_DMA_NOT_SUPPORTED ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct iommu_ops const*) ; 
 int FUNC1 (struct iommu_ops const*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iommu_ops const*,int) ; 
 int /*<<< orphan*/  dma_dummy_ops ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct iommu_ops* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 

int FUNC6(struct device *dev, enum dev_dma_attr attr)
{
	const struct iommu_ops *iommu;
	u64 dma_addr = 0, size = 0;

	if (attr == DEV_DMA_NOT_SUPPORTED) {
		FUNC5(dev, &dma_dummy_ops);
		return 0;
	}

	FUNC3(dev, &dma_addr, &size);

	iommu = FUNC4(dev);
	if (FUNC0(iommu) && FUNC1(iommu) == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	FUNC2(dev, dma_addr, size,
				iommu, attr == DEV_DMA_COHERENT);

	return 0;
}