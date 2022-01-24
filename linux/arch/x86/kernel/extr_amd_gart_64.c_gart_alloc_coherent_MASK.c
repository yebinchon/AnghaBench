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
struct device {scalar_t__ coherent_dma_mask; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_MAPPING_ERROR ; 
 void* FUNC1 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,size_t,void*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  force_iommu ; 
 unsigned long FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static void *
FUNC8(struct device *dev, size_t size, dma_addr_t *dma_addr,
		    gfp_t flag, unsigned long attrs)
{
	void *vaddr;

	vaddr = FUNC1(dev, size, dma_addr, flag, attrs);
	if (!vaddr ||
	    !force_iommu || dev->coherent_dma_mask <= FUNC0(24))
		return vaddr;

	*dma_addr = FUNC3(dev, FUNC7(vaddr), size,
			DMA_BIDIRECTIONAL, (1UL << FUNC5(size)) - 1);
	FUNC4();
	if (FUNC6(*dma_addr == DMA_MAPPING_ERROR))
		goto out_free;
	return vaddr;
out_free:
	FUNC2(dev, size, vaddr, *dma_addr, attrs);
	return NULL;
}