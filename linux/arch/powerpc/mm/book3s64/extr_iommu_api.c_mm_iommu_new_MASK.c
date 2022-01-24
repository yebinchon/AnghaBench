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
struct mm_struct {int dummy; } ;
struct mm_iommu_table_group_mem_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MM_IOMMU_TABLE_INVALID_HPA ; 
 long FUNC0 (struct mm_struct*,unsigned long,unsigned long,int /*<<< orphan*/ ,struct mm_iommu_table_group_mem_t**) ; 

long FUNC1(struct mm_struct *mm, unsigned long ua, unsigned long entries,
		struct mm_iommu_table_group_mem_t **pmem)
{
	return FUNC0(mm, ua, entries, MM_IOMMU_TABLE_INVALID_HPA,
			pmem);
}