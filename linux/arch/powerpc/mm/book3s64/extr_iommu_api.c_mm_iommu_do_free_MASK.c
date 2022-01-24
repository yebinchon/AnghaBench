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
struct mm_iommu_table_group_mem_t {int /*<<< orphan*/  hpas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mm_iommu_table_group_mem_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_iommu_table_group_mem_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mm_iommu_table_group_mem_t *mem)
{

	FUNC1(mem);
	FUNC2(mem->hpas);
	FUNC0(mem);
}