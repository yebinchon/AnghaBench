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
typedef  int /*<<< orphan*/  u64 ;
struct iommu_ops {int dummy; } ;
struct dma_map_ops {int dummy; } ;
struct TYPE_2__ {int dma_coherent; int dma_ops_setup; } ;
struct device {int dma_coherent; TYPE_1__ archdata; int /*<<< orphan*/ * dma_ops; } ;

/* Variables and functions */
 struct dma_map_ops* FUNC0 (int) ; 
 struct dma_map_ops* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iommu_ops const*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct dma_map_ops const*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  xen_swiotlb_dma_ops ; 

void FUNC5(struct device *dev, u64 dma_base, u64 size,
			const struct iommu_ops *iommu, bool coherent)
{
	const struct dma_map_ops *dma_ops;

	dev->archdata.dma_coherent = coherent;
#ifdef CONFIG_SWIOTLB
	dev->dma_coherent = coherent;
#endif

	/*
	 * Don't override the dma_ops if they have already been set. Ideally
	 * this should be the only location where dma_ops are set, remove this
	 * check when all other callers of set_dma_ops will have disappeared.
	 */
	if (dev->dma_ops)
		return;

	if (FUNC2(dev, dma_base, size, iommu))
		dma_ops = FUNC1(coherent);
	else
		dma_ops = FUNC0(coherent);

	FUNC3(dev, dma_ops);

#ifdef CONFIG_XEN
	if (xen_initial_domain())
		dev->dma_ops = &xen_swiotlb_dma_ops;
#endif
	dev->archdata.dma_ops_setup = true;
}