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
struct zpci_dev {int /*<<< orphan*/  allocated_pages; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef  int gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 size_t FUNC0 (size_t) ; 
 size_t PAGE_SIZE ; 
 int __GFP_ZERO ; 
 struct page* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 unsigned long FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct page*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 struct zpci_dev* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC10(struct device *dev, size_t size,
			    dma_addr_t *dma_handle, gfp_t flag,
			    unsigned long attrs)
{
	struct zpci_dev *zdev = FUNC9(FUNC8(dev));
	struct page *page;
	unsigned long pa;
	dma_addr_t map;

	size = FUNC0(size);
	page = FUNC1(flag | __GFP_ZERO, FUNC5(size));
	if (!page)
		return NULL;

	pa = FUNC6(page);
	map = FUNC7(dev, page, 0, size, DMA_BIDIRECTIONAL, 0);
	if (FUNC3(dev, map)) {
		FUNC4(pa, FUNC5(size));
		return NULL;
	}

	FUNC2(size / PAGE_SIZE, &zdev->allocated_pages);
	if (dma_handle)
		*dma_handle = map;
	return (void *) pa;
}