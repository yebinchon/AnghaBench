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
struct iommu_table {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iommu_table*,long,long,int) ; 
 int FUNC1 (struct iommu_table*,long,long,unsigned long,int,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct iommu_table *tbl, long index,
		long npages, unsigned long uaddr,
		enum dma_data_direction direction,
		unsigned long attrs)
{
	int ret = FUNC1(tbl, index, npages, uaddr, direction,
			attrs);

	if (!ret)
		FUNC0(tbl, index, npages, false);

	return ret;
}