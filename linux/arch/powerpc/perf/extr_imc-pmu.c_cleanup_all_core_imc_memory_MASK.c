#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct imc_mem_info {scalar_t__ vbase; } ;
struct TYPE_2__ {int counter_mem_size; struct imc_mem_info* mem_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* core_imc_pmu ; 
 struct imc_mem_info* core_imc_refc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct imc_mem_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  threads_per_core ; 

__attribute__((used)) static void FUNC5(void)
{
	int i, nr_cores = FUNC0(FUNC4(), threads_per_core);
	struct imc_mem_info *ptr = core_imc_pmu->mem_info;
	int size = core_imc_pmu->counter_mem_size;

	/* mem_info will never be NULL */
	for (i = 0; i < nr_cores; i++) {
		if (ptr[i].vbase)
			FUNC1((u64)ptr[i].vbase, FUNC2(size));
	}

	FUNC3(ptr);
	FUNC3(core_imc_refc);
}