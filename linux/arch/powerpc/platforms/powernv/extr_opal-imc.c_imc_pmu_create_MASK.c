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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct imc_pmu* name; } ;
struct imc_pmu {int domain; struct imc_pmu* mem_info; TYPE_1__ pmu; int /*<<< orphan*/  counter_mem_size; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IMC_DOMAIN_NEST ; 
 scalar_t__ FUNC0 (struct device_node*,struct imc_pmu*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device_node*,struct imc_pmu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct imc_pmu*) ; 
 struct imc_pmu* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct imc_pmu*) ; 

__attribute__((used)) static int FUNC6(struct device_node *parent, int pmu_index, int domain)
{
	int ret = 0;
	struct imc_pmu *pmu_ptr;
	u32 offset;

	/* Return for unknown domain */
	if (domain < 0)
		return -EINVAL;

	/* memory for pmu */
	pmu_ptr = FUNC3(sizeof(*pmu_ptr), GFP_KERNEL);
	if (!pmu_ptr)
		return -ENOMEM;

	/* Set the domain */
	pmu_ptr->domain = domain;

	ret = FUNC4(parent, "size", &pmu_ptr->counter_mem_size);
	if (ret) {
		ret = -EINVAL;
		goto free_pmu;
	}

	if (!FUNC4(parent, "offset", &offset)) {
		if (FUNC0(parent, pmu_ptr, offset)) {
			ret = -EINVAL;
			goto free_pmu;
		}
	}

	/* Function to register IMC pmu */
	ret = FUNC1(parent, pmu_ptr, pmu_index);
	if (ret) {
		FUNC5("IMC PMU %s Register failed\n", pmu_ptr->pmu.name);
		FUNC2(pmu_ptr->pmu.name);
		if (pmu_ptr->domain == IMC_DOMAIN_NEST)
			FUNC2(pmu_ptr->mem_info);
		FUNC2(pmu_ptr);
		return ret;
	}

	return 0;

free_pmu:
	FUNC2(pmu_ptr);
	return ret;
}