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
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dma_size ; 
 int FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

void *FUNC4(struct device *dev, size_t size, dma_addr_t *handle,
		gfp_t gfp, unsigned long attrs)
{
	void *ret;
	u32 paddr;
	int order;

	if (!dma_size || !size)
		return NULL;

	order = FUNC1(((size - 1) >> PAGE_SHIFT) + 1);

	paddr = FUNC0(order);

	if (handle)
		*handle = paddr;

	if (!paddr)
		return NULL;

	ret = FUNC3(paddr);
	FUNC2(ret, 0, 1 << order);
	return ret;
}