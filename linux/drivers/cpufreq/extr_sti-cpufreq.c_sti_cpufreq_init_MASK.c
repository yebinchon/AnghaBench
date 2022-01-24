#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* cpu; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_3__ ddata ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 

__attribute__((used)) static int FUNC7(void)
{
	int ret;

	if ((!FUNC3("st,stih407")) &&
		(!FUNC3("st,stih410")))
		return -ENODEV;

	ddata.cpu = FUNC1(0);
	if (!ddata.cpu) {
		FUNC0(ddata.cpu, "Failed to get device for CPU0\n");
		goto skip_voltage_scaling;
	}

	if (!FUNC2(ddata.cpu->of_node, "operating-points-v2", NULL)) {
		FUNC0(ddata.cpu, "OPP-v2 not supported\n");
		goto skip_voltage_scaling;
	}

	ret = FUNC5();
	if (ret)
		goto skip_voltage_scaling;

	ret = FUNC6();
	if (!ret)
		goto register_cpufreq_dt;

skip_voltage_scaling:
	FUNC0(ddata.cpu, "Not doing voltage scaling\n");

register_cpufreq_dt:
	FUNC4("cpufreq-dt", -1, NULL, 0);

	return 0;
}