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
struct property {int length; int /*<<< orphan*/ * value; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;
struct cpufreq_frequency_table {int /*<<< orphan*/  frequency; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  clk; struct cpufreq_frequency_table* freq_tbl; int /*<<< orphan*/  transition_latency; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_ETERNAL ; 
 int /*<<< orphan*/  CPUFREQ_TABLE_END ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct cpufreq_frequency_table* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cpufreq_frequency_table*) ; 
 struct device_node* FUNC8 (int /*<<< orphan*/ ) ; 
 struct property* FUNC9 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 scalar_t__ FUNC11 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 TYPE_1__ spear_cpufreq ; 
 int /*<<< orphan*/  spear_cpufreq_driver ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device_node *np;
	const struct property *prop;
	struct cpufreq_frequency_table *freq_tbl;
	const __be32 *val;
	int cnt, i, ret;

	np = FUNC8(0);
	if (!np) {
		FUNC12("No cpu node found\n");
		return -ENODEV;
	}

	if (FUNC11(np, "clock-latency",
				&spear_cpufreq.transition_latency))
		spear_cpufreq.transition_latency = CPUFREQ_ETERNAL;

	prop = FUNC9(np, "cpufreq_tbl", NULL);
	if (!prop || !prop->value) {
		FUNC12("Invalid cpufreq_tbl\n");
		ret = -ENODEV;
		goto out_put_node;
	}

	cnt = prop->length / sizeof(u32);
	val = prop->value;

	freq_tbl = FUNC6(cnt + 1, sizeof(*freq_tbl), GFP_KERNEL);
	if (!freq_tbl) {
		ret = -ENOMEM;
		goto out_put_node;
	}

	for (i = 0; i < cnt; i++)
		freq_tbl[i].frequency = FUNC2(val++);

	freq_tbl[i].frequency = CPUFREQ_TABLE_END;

	spear_cpufreq.freq_tbl = freq_tbl;

	FUNC10(np);

	spear_cpufreq.clk = FUNC3(NULL, "cpu_clk");
	if (FUNC0(spear_cpufreq.clk)) {
		FUNC12("Unable to get CPU clock\n");
		ret = FUNC1(spear_cpufreq.clk);
		goto out_put_mem;
	}

	ret = FUNC5(&spear_cpufreq_driver);
	if (!ret)
		return 0;

	FUNC12("failed register driver: %d\n", ret);
	FUNC4(spear_cpufreq.clk);

out_put_mem:
	FUNC7(freq_tbl);
	return ret;

out_put_node:
	FUNC10(np);
	return ret;
}