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
struct TYPE_2__ {int vmbits; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_XPA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int PGDIR_SHIFT ; 
 int PGD_ORDER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int check_for_high_segbits ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ cpu_has_3kex ; 
 scalar_t__ cpu_has_htw ; 
 scalar_t__ cpu_has_ldpte ; 
 int /*<<< orphan*/  cpu_has_rixi ; 
 scalar_t__ cpu_has_xpa ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  scratch_reg ; 
 int /*<<< orphan*/  FUNC18 () ; 

void FUNC19(void)
{
	/*
	 * The refill handler is generated per-CPU, multi-node systems
	 * may have local storage for it. The other handlers are only
	 * needed once.
	 */
	static int run_once = 0;

	if (FUNC0(CONFIG_XPA) && !cpu_has_rixi)
		FUNC17("Kernels supporting XPA currently require CPUs with RIXI");

	FUNC16();
	FUNC12();

#ifdef CONFIG_64BIT
	check_for_high_segbits = current_cpu_data.vmbits > (PGDIR_SHIFT + PGD_ORDER + PAGE_SHIFT - 3);
#endif

	if (cpu_has_3kex) {
#ifndef CONFIG_MIPS_PGD_C0_CONTEXT
		if (!run_once) {
			FUNC11();
			FUNC5();
			FUNC3();
			FUNC6();
			FUNC4();
			FUNC15();
			run_once++;
		}
#else
		panic("No R3000 TLB refill handler");
#endif
		return;
	}

	if (cpu_has_ldpte)
		FUNC18();

	if (!run_once) {
		scratch_reg = FUNC1();
		FUNC11();
		FUNC7();
		FUNC10();
		FUNC8();
		if (cpu_has_ldpte)
			FUNC2();
		else
			FUNC9();
		FUNC15();
		run_once++;
	}
	if (cpu_has_xpa)
		FUNC14();
	if (cpu_has_htw)
		FUNC13();
}