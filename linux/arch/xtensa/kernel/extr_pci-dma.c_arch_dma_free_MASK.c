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
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned long FUNC0 (size_t) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 struct page* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 scalar_t__ FUNC9 (void*) ; 
 struct page* FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct device *dev, size_t size, void *vaddr,
		dma_addr_t dma_handle, unsigned long attrs)
{
	unsigned long count = FUNC0(size) >> PAGE_SHIFT;
	struct page *page;

	if (FUNC9(vaddr)) {
		page = FUNC10(FUNC8(vaddr));
	} else {
#ifdef CONFIG_MMU
		dma_common_free_remap(vaddr, size);
#endif
		page = FUNC7(FUNC1(FUNC5(dev, dma_handle)));
	}

	if (!FUNC4(dev, page, count))
		FUNC2(page, FUNC6(size));
}