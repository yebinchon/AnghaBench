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
struct iommu_table {unsigned long it_level_size; unsigned long it_size; int /*<<< orphan*/  it_indirect_levels; int /*<<< orphan*/ * it_userspace; scalar_t__ it_base; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long const,int /*<<< orphan*/ ) ; 

void FUNC1(struct iommu_table *tbl)
{
	const unsigned long size = tbl->it_indirect_levels ?
			tbl->it_level_size : tbl->it_size;

	if (!tbl->it_size)
		return;

	FUNC0((__be64 *)tbl->it_base, size,
			tbl->it_indirect_levels);
	if (tbl->it_userspace) {
		FUNC0(tbl->it_userspace, size,
				tbl->it_indirect_levels);
	}
}