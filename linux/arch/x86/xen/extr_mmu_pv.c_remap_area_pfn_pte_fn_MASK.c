#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct remap_data {TYPE_1__* mmu_update; scalar_t__ no_translate; int /*<<< orphan*/ * pfn; scalar_t__ contiguous; int /*<<< orphan*/  prot; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_4__ {int /*<<< orphan*/  maddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_NORMAL_PT_UPDATE ; 
 int /*<<< orphan*/  MMU_PT_UPDATE_NO_TRANSLATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(pte_t *ptep, unsigned long addr, void *data)
{
	struct remap_data *rmd = data;
	pte_t pte = FUNC1(FUNC0(*rmd->pfn, rmd->prot));

	/*
	 * If we have a contiguous range, just update the pfn itself,
	 * else update pointer to be "next pfn".
	 */
	if (rmd->contiguous)
		(*rmd->pfn)++;
	else
		rmd->pfn++;

	rmd->mmu_update->ptr = FUNC3(ptep).maddr;
	rmd->mmu_update->ptr |= rmd->no_translate ?
		MMU_PT_UPDATE_NO_TRANSLATE :
		MMU_NORMAL_PT_UPDATE;
	rmd->mmu_update->val = FUNC2(pte);
	rmd->mmu_update++;

	return 0;
}