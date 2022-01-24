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
struct iommu_table {scalar_t__ it_size; scalar_t__ it_offset; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*,int) ; 
 int FUNC3 (scalar_t__) ; 
 struct iommu_table* FUNC4 (struct device*) ; 

u64 FUNC5(struct device *dev)
{
	struct iommu_table *tbl = FUNC4(dev);
	u64 mask;

	if (!tbl)
		return 0;

	if (FUNC0(dev)) {
		u64 bypass_mask = FUNC1(dev);

		if (FUNC2(dev, bypass_mask))
			return bypass_mask;
	}

	mask = 1ULL < (FUNC3(tbl->it_offset + tbl->it_size) - 1);
	mask += mask - 1;

	return mask;
}