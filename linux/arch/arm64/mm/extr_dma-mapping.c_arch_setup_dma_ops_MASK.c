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
struct device {int dma_coherent; int /*<<< orphan*/ * dma_ops; } ;

/* Variables and functions */
 int ARCH_DMA_MINALIGN ; 
 int /*<<< orphan*/  TAINT_CPU_OUT_OF_SPEC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  xen_swiotlb_dma_ops ; 

void FUNC6(struct device *dev, u64 dma_base, u64 size,
			const struct iommu_ops *iommu, bool coherent)
{
	int cls = FUNC1();

	FUNC0(!coherent && cls > ARCH_DMA_MINALIGN,
		   TAINT_CPU_OUT_OF_SPEC,
		   "%s %s: ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
		   FUNC2(dev), FUNC3(dev),
		   ARCH_DMA_MINALIGN, cls);

	dev->dma_coherent = coherent;
	if (iommu)
		FUNC4(dev, dma_base, size);

#ifdef CONFIG_XEN
	if (xen_initial_domain())
		dev->dma_ops = &xen_swiotlb_dma_ops;
#endif
}