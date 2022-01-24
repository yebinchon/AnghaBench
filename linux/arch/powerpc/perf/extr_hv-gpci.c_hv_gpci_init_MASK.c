#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hv_perf_caps {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  capabilities; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FW_FEATURE_LPAR ; 
 int /*<<< orphan*/  PERF_PMU_CAP_NO_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ h_gpci_pmu ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 (struct hv_perf_caps*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(void)
{
	int r;
	unsigned long hret;
	struct hv_perf_caps caps;

	FUNC1();

	if (!FUNC0(FW_FEATURE_LPAR)) {
		FUNC4("not a virtualized system, not enabling\n");
		return -ENODEV;
	}

	hret = FUNC2(&caps);
	if (hret) {
		FUNC4("could not obtain capabilities, not enabling, rc=%ld\n",
				hret);
		return -ENODEV;
	}

	/* sampling not supported */
	h_gpci_pmu.capabilities |= PERF_PMU_CAP_NO_INTERRUPT;

	r = FUNC3(&h_gpci_pmu, h_gpci_pmu.name, -1);
	if (r)
		return r;

	return 0;
}