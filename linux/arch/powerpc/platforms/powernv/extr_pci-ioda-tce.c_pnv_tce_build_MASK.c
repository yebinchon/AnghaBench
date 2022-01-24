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
typedef  int u64 ;
struct iommu_table {int it_page_shift; long it_offset; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int TCE_PCI_READ ; 
 int TCE_PCI_WRITE ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (struct iommu_table*,int,unsigned long,int) ; 

int FUNC4(struct iommu_table *tbl, long index, long npages,
		unsigned long uaddr, enum dma_data_direction direction,
		unsigned long attrs)
{
	u64 proto_tce = FUNC2(direction);
	u64 rpn = FUNC0(uaddr) >> tbl->it_page_shift;
	long i;

	if (proto_tce & TCE_PCI_WRITE)
		proto_tce |= TCE_PCI_READ;

	for (i = 0; i < npages; i++) {
		unsigned long newtce = proto_tce |
			((rpn + i) << tbl->it_page_shift);
		unsigned long idx = index - tbl->it_offset + i;

		*(FUNC3(tbl, false, idx, true)) = FUNC1(newtce);
	}

	return 0;
}