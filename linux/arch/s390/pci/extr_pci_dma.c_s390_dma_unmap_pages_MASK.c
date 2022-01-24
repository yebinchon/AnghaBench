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
struct zpci_dev {int /*<<< orphan*/  unmapped_pages; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  ZPCI_PTE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int,int) ; 
 int FUNC2 (struct zpci_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct zpci_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static void FUNC8(struct device *dev, dma_addr_t dma_addr,
				 size_t size, enum dma_data_direction direction,
				 unsigned long attrs)
{
	struct zpci_dev *zdev = FUNC5(FUNC4(dev));
	int npages, ret;

	npages = FUNC3(dma_addr, size, PAGE_SIZE);
	dma_addr = dma_addr & PAGE_MASK;
	ret = FUNC2(zdev, 0, dma_addr, npages * PAGE_SIZE,
			       ZPCI_PTE_INVALID);
	if (ret) {
		FUNC6("unmap error:\n");
		FUNC7(ret, dma_addr);
		return;
	}

	FUNC0(npages, &zdev->unmapped_pages);
	FUNC1(dev, dma_addr, npages);
}