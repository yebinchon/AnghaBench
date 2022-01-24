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
struct iommu_table {scalar_t__ it_offset; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct iommu_table*,int,scalar_t__,int) ; 

unsigned long FUNC2(struct iommu_table *tbl, long index)
{
	__be64 *ptce = FUNC1(tbl, false, index - tbl->it_offset, false);

	if (!ptce)
		return 0;

	return FUNC0(*ptce);
}