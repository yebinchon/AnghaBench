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
struct sg_table {int /*<<< orphan*/  sgl; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 unsigned long FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int FUNC4 (struct sg_table*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct device *dev, struct sg_table *sgt,
		 void *cpu_addr, dma_addr_t handle, size_t size,
		 unsigned long attrs)
{
	unsigned long pfn = FUNC1(dev, handle);
	struct page *page;
	int ret;

	/* If the PFN is not valid, we do not have a struct page */
	if (!FUNC3(pfn))
		return -ENXIO;

	page = FUNC2(pfn);

	ret = FUNC4(sgt, 1, GFP_KERNEL);
	if (FUNC6(ret))
		return ret;

	FUNC5(sgt->sgl, page, FUNC0(size), 0);
	return 0;
}