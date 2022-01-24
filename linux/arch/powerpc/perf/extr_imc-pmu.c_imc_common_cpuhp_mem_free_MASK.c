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
struct imc_pmu {scalar_t__ domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE ; 
 int /*<<< orphan*/  CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE ; 
 int /*<<< orphan*/  CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE ; 
 int /*<<< orphan*/  CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE ; 
 scalar_t__ IMC_DOMAIN_CORE ; 
 scalar_t__ IMC_DOMAIN_NEST ; 
 scalar_t__ IMC_DOMAIN_THREAD ; 
 scalar_t__ IMC_DOMAIN_TRACE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nest_imc_refc ; 
 int /*<<< orphan*/  nest_init_lock ; 
 int nest_pmus ; 
 int /*<<< orphan*/ * per_nest_pmu_arr ; 

__attribute__((used)) static void FUNC7(struct imc_pmu *pmu_ptr)
{
	if (pmu_ptr->domain == IMC_DOMAIN_NEST) {
		FUNC5(&nest_init_lock);
		if (nest_pmus == 1) {
			FUNC3(CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE);
			FUNC4(nest_imc_refc);
			FUNC4(per_nest_pmu_arr);
			per_nest_pmu_arr = NULL;
		}

		if (nest_pmus > 0)
			nest_pmus--;
		FUNC6(&nest_init_lock);
	}

	/* Free core_imc memory */
	if (pmu_ptr->domain == IMC_DOMAIN_CORE) {
		FUNC3(CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE);
		FUNC0();
	}

	/* Free thread_imc memory */
	if (pmu_ptr->domain == IMC_DOMAIN_THREAD) {
		FUNC3(CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE);
		FUNC1();
	}

	if (pmu_ptr->domain == IMC_DOMAIN_TRACE) {
		FUNC3(CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE);
		FUNC2();
	}
}