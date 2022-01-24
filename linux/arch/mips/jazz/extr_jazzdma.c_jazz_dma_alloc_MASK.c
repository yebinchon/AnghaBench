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
 int /*<<< orphan*/  DMA_MAPPING_ERROR ; 
 void* FUNC0 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,size_t,void*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void *FUNC4(struct device *dev, size_t size,
		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
{
	void *ret;

	ret = FUNC0(dev, size, dma_handle, gfp, attrs);
	if (!ret)
		return NULL;

	*dma_handle = FUNC2(FUNC3(ret), size);
	if (*dma_handle == DMA_MAPPING_ERROR) {
		FUNC1(dev, size, ret, *dma_handle, attrs);
		return NULL;
	}

	return ret;
}