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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 size_t FUNC0 (size_t) ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 struct zpci_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct device *dev, size_t size,
			  void *pa, dma_addr_t dma_handle,
			  unsigned long attrs)
{
	struct zpci_dev *zdev = FUNC6(FUNC5(dev));

	size = FUNC0(size);
	FUNC1(size / PAGE_SIZE, &zdev->allocated_pages);
	FUNC4(dev, dma_handle, size, DMA_BIDIRECTIONAL, 0);
	FUNC2((unsigned long) pa, FUNC3(size));
}