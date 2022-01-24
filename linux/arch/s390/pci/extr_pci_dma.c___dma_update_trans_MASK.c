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
typedef  int /*<<< orphan*/  u8 ;
struct zpci_dev {int /*<<< orphan*/  dma_table_lock; int /*<<< orphan*/  dma_table; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int FUNC0 (size_t) ; 
 unsigned long PAGE_MASK ; 
 unsigned int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int ZPCI_PTE_INVALID ; 
 int ZPCI_PTE_VALID ; 
 int ZPCI_PTE_VALID_MASK ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ *,int) ; 
 unsigned long* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct zpci_dev *zdev, unsigned long pa,
			      dma_addr_t dma_addr, size_t size, int flags)
{
	unsigned int nr_pages = FUNC0(size) >> PAGE_SHIFT;
	u8 *page_addr = (u8 *) (pa & PAGE_MASK);
	unsigned long irq_flags;
	unsigned long *entry;
	int i, rc = 0;

	if (!nr_pages)
		return -EINVAL;

	FUNC3(&zdev->dma_table_lock, irq_flags);
	if (!zdev->dma_table) {
		rc = -EINVAL;
		goto out_unlock;
	}

	for (i = 0; i < nr_pages; i++) {
		entry = FUNC2(zdev->dma_table, dma_addr);
		if (!entry) {
			rc = -ENOMEM;
			goto undo_cpu_trans;
		}
		FUNC1(entry, page_addr, flags);
		page_addr += PAGE_SIZE;
		dma_addr += PAGE_SIZE;
	}

undo_cpu_trans:
	if (rc && ((flags & ZPCI_PTE_VALID_MASK) == ZPCI_PTE_VALID)) {
		flags = ZPCI_PTE_INVALID;
		while (i-- > 0) {
			page_addr -= PAGE_SIZE;
			dma_addr -= PAGE_SIZE;
			entry = FUNC2(zdev->dma_table, dma_addr);
			if (!entry)
				break;
			FUNC1(entry, page_addr, flags);
		}
	}
out_unlock:
	FUNC4(&zdev->dma_table_lock, irq_flags);
	return rc;
}