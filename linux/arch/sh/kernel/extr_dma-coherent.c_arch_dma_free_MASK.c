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
struct device {scalar_t__ dma_pfn_offset; } ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

void FUNC5(struct device *dev, size_t size, void *vaddr,
		dma_addr_t dma_handle, unsigned long attrs)
{
	int order = FUNC2(size);
	unsigned long pfn = (dma_handle >> PAGE_SHIFT);
	int k;

	if (!FUNC0(!dev))
		pfn += dev->dma_pfn_offset;

	for (k = 0; k < (1 << order); k++)
		FUNC1(FUNC4(pfn + k), 0);

	FUNC3(vaddr);
}