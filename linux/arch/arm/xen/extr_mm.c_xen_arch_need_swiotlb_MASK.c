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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  hypercall_cflush ; 

bool FUNC2(struct device *dev,
			   phys_addr_t phys,
			   dma_addr_t dev_addr)
{
	unsigned int xen_pfn = FUNC0(phys);
	unsigned int bfn = FUNC0(dev_addr);

	/*
	 * The swiotlb buffer should be used if
	 *	- Xen doesn't have the cache flush hypercall
	 *	- The Linux page refers to foreign memory
	 *	- The device doesn't support coherent DMA request
	 *
	 * The Linux page may be spanned acrros multiple Xen page, although
	 * it's not possible to have a mix of local and foreign Xen page.
	 * Furthermore, range_straddles_page_boundary is already checking
	 * if buffer is physically contiguous in the host RAM.
	 *
	 * Therefore we only need to check the first Xen page to know if we
	 * require a bounce buffer because the device doesn't support coherent
	 * memory and we are not able to flush the cache.
	 */
	return (!hypercall_cflush && (xen_pfn != bfn) &&
		!FUNC1(dev));
}