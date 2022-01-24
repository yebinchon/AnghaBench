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
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC2(struct device *dev, size_t size,
				 dma_addr_t *dma_handle, gfp_t gfp,
				 unsigned long attrs)

{
	void *ret = FUNC1(size, dma_handle);

	/*
	 * dma_alloc_from_global_coherent() may fail because:
	 *
	 * - no consistent DMA region has been defined, so we can't
	 *   continue.
	 * - there is no space left in consistent DMA region, so we
	 *   only can fallback to generic allocator if we are
	 *   advertised that consistency is not required.
	 */

	FUNC0(ret == NULL);
	return ret;
}