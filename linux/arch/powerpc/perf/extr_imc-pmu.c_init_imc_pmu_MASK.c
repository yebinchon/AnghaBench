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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct imc_pmu {int domain; TYPE_1__ pmu; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IMC_DOMAIN_CORE 131 
#define  IMC_DOMAIN_NEST 130 
#define  IMC_DOMAIN_THREAD 129 
#define  IMC_DOMAIN_TRACE 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct imc_pmu*) ; 
 int /*<<< orphan*/  FUNC5 (struct imc_pmu*) ; 
 int FUNC6 (struct imc_pmu*,struct device_node*,int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nest_imc_refc ; 
 int /*<<< orphan*/  nest_init_lock ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  nest_pmus ; 
 int /*<<< orphan*/ * per_nest_pmu_arr ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int FUNC14 () ; 
 int FUNC15 () ; 
 int FUNC16 (struct device_node*,struct imc_pmu*) ; 
 int FUNC17 (struct imc_pmu*) ; 

int FUNC18(struct device_node *parent, struct imc_pmu *pmu_ptr, int pmu_idx)
{
	int ret;

	ret = FUNC6(pmu_ptr, parent, pmu_idx);
	if (ret)
		goto err_free_mem;

	switch (pmu_ptr->domain) {
	case IMC_DOMAIN_NEST:
		/*
		* Nest imc pmu need only one cpu per chip, we initialize the
		* cpumask for the first nest imc pmu and use the same for the
		* rest. To handle the cpuhotplug callback unregister, we track
		* the number of nest pmus in "nest_pmus".
		*/
		FUNC9(&nest_init_lock);
		if (nest_pmus == 0) {
			ret = FUNC7();
			if (ret) {
				FUNC10(&nest_init_lock);
				FUNC8(per_nest_pmu_arr);
				per_nest_pmu_arr = NULL;
				goto err_free_mem;
			}
			/* Register for cpu hotplug notification. */
			ret = FUNC11();
			if (ret) {
				FUNC10(&nest_init_lock);
				FUNC8(nest_imc_refc);
				FUNC8(per_nest_pmu_arr);
				per_nest_pmu_arr = NULL;
				goto err_free_mem;
			}
		}
		nest_pmus++;
		FUNC10(&nest_init_lock);
		break;
	case IMC_DOMAIN_CORE:
		ret = FUNC3();
		if (ret) {
			FUNC0();
			goto err_free_mem;
		}

		break;
	case IMC_DOMAIN_THREAD:
		ret = FUNC14();
		if (ret) {
			FUNC1();
			goto err_free_mem;
		}

		break;
	case IMC_DOMAIN_TRACE:
		ret = FUNC15();
		if (ret) {
			FUNC2();
			goto err_free_mem;
		}

		break;
	default:
		return  -EINVAL;	/* Unknown domain */
	}

	ret = FUNC16(parent, pmu_ptr);
	if (ret)
		goto err_free_cpuhp_mem;

	ret = FUNC17(pmu_ptr);
	if (ret)
		goto err_free_cpuhp_mem;

	ret = FUNC12(&pmu_ptr->pmu, pmu_ptr->pmu.name, -1);
	if (ret)
		goto err_free_cpuhp_mem;

	FUNC13("%s performance monitor hardware support registered\n",
							pmu_ptr->pmu.name);

	return 0;

err_free_cpuhp_mem:
	FUNC4(pmu_ptr);
err_free_mem:
	FUNC5(pmu_ptr);
	return ret;
}