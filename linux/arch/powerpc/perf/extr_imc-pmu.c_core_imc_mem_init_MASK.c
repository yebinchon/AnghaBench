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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct imc_mem_info {int id; int /*<<< orphan*/ * vbase; } ;
struct TYPE_4__ {struct imc_mem_info* mem_info; } ;
struct TYPE_3__ {int id; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  OPAL_IMC_COUNTERS_CORE ; 
 int __GFP_NOWARN ; 
 int __GFP_THISNODE ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct page* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* core_imc_pmu ; 
 TYPE_1__* core_imc_refc ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct page*) ; 
 int threads_per_core ; 

__attribute__((used)) static int FUNC9(int cpu, int size)
{
	int nid, rc = 0, core_id = (cpu / threads_per_core);
	struct imc_mem_info *mem_info;
	struct page *page;

	/*
	 * alloc_pages_node() will allocate memory for core in the
	 * local node only.
	 */
	nid = FUNC2(cpu);
	mem_info = &core_imc_pmu->mem_info[core_id];
	mem_info->id = core_id;

	/* We need only vbase for core counters */
	page = FUNC1(nid,
				GFP_KERNEL | __GFP_ZERO | __GFP_THISNODE |
				__GFP_NOWARN, FUNC5(size));
	if (!page)
		return -ENOMEM;
	mem_info->vbase = FUNC8(page);

	/* Init the mutex */
	core_imc_refc[core_id].id = core_id;
	FUNC6(&core_imc_refc[core_id].lock);

	rc = FUNC7(OPAL_IMC_COUNTERS_CORE,
				FUNC0((void *)mem_info->vbase),
				FUNC4(cpu));
	if (rc) {
		FUNC3((u64)mem_info->vbase, FUNC5(size));
		mem_info->vbase = NULL;
	}

	return rc;
}