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
struct regulator {int dummy; } ;
struct mtk_cpu_dvfs_info {int need_voltage_tracking; int /*<<< orphan*/  cpus; struct regulator* inter_clk; struct regulator* cpu_clk; struct regulator* sram_reg; struct regulator* proc_reg; struct device* cpu_dev; int /*<<< orphan*/  intermediate_voltage; } ;
struct device {int dummy; } ;
typedef  struct regulator dev_pm_opp ;
typedef  struct regulator clk ;

/* Variables and functions */
 int ENODEV ; 
 int EPROBE_DEFER ; 
 struct regulator* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct regulator*) ; 
 int FUNC2 (struct regulator*) ; 
 struct regulator* FUNC3 (struct device*,char*) ; 
 unsigned long FUNC4 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC5 (struct regulator*) ; 
 struct regulator* FUNC6 (struct device*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (struct regulator*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct regulator*) ; 
 struct device* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 struct regulator* FUNC15 (struct device*,char*) ; 
 struct regulator* FUNC16 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct regulator*) ; 

__attribute__((used)) static int FUNC18(struct mtk_cpu_dvfs_info *info, int cpu)
{
	struct device *cpu_dev;
	struct regulator *proc_reg = FUNC0(-ENODEV);
	struct regulator *sram_reg = FUNC0(-ENODEV);
	struct clk *cpu_clk = FUNC0(-ENODEV);
	struct clk *inter_clk = FUNC0(-ENODEV);
	struct dev_pm_opp *opp;
	unsigned long rate;
	int ret;

	cpu_dev = FUNC12(cpu);
	if (!cpu_dev) {
		FUNC13("failed to get cpu%d device\n", cpu);
		return -ENODEV;
	}

	cpu_clk = FUNC3(cpu_dev, "cpu");
	if (FUNC1(cpu_clk)) {
		if (FUNC2(cpu_clk) == -EPROBE_DEFER)
			FUNC14("cpu clk for cpu%d not ready, retry.\n", cpu);
		else
			FUNC13("failed to get cpu clk for cpu%d\n", cpu);

		ret = FUNC2(cpu_clk);
		return ret;
	}

	inter_clk = FUNC3(cpu_dev, "intermediate");
	if (FUNC1(inter_clk)) {
		if (FUNC2(inter_clk) == -EPROBE_DEFER)
			FUNC14("intermediate clk for cpu%d not ready, retry.\n",
				cpu);
		else
			FUNC13("failed to get intermediate clk for cpu%d\n",
			       cpu);

		ret = FUNC2(inter_clk);
		goto out_free_resources;
	}

	proc_reg = FUNC16(cpu_dev, "proc");
	if (FUNC1(proc_reg)) {
		if (FUNC2(proc_reg) == -EPROBE_DEFER)
			FUNC14("proc regulator for cpu%d not ready, retry.\n",
				cpu);
		else
			FUNC13("failed to get proc regulator for cpu%d\n",
			       cpu);

		ret = FUNC2(proc_reg);
		goto out_free_resources;
	}

	/* Both presence and absence of sram regulator are valid cases. */
	sram_reg = FUNC15(cpu_dev, "sram");

	/* Get OPP-sharing information from "operating-points-v2" bindings */
	ret = FUNC10(cpu_dev, &info->cpus);
	if (ret) {
		FUNC13("failed to get OPP-sharing information for cpu%d\n",
		       cpu);
		goto out_free_resources;
	}

	ret = FUNC8(&info->cpus);
	if (ret) {
		FUNC14("no OPP table for cpu%d\n", cpu);
		goto out_free_resources;
	}

	/* Search a safe voltage for intermediate frequency. */
	rate = FUNC4(inter_clk);
	opp = FUNC6(cpu_dev, &rate);
	if (FUNC1(opp)) {
		FUNC13("failed to get intermediate opp for cpu%d\n", cpu);
		ret = FUNC2(opp);
		goto out_free_opp_table;
	}
	info->intermediate_voltage = FUNC7(opp);
	FUNC11(opp);

	info->cpu_dev = cpu_dev;
	info->proc_reg = proc_reg;
	info->sram_reg = FUNC1(sram_reg) ? NULL : sram_reg;
	info->cpu_clk = cpu_clk;
	info->inter_clk = inter_clk;

	/*
	 * If SRAM regulator is present, software "voltage tracking" is needed
	 * for this CPU power domain.
	 */
	info->need_voltage_tracking = !FUNC1(sram_reg);

	return 0;

out_free_opp_table:
	FUNC9(&info->cpus);

out_free_resources:
	if (!FUNC1(proc_reg))
		FUNC17(proc_reg);
	if (!FUNC1(sram_reg))
		FUNC17(sram_reg);
	if (!FUNC1(cpu_clk))
		FUNC5(cpu_clk);
	if (!FUNC1(inter_clk))
		FUNC5(inter_clk);

	return ret;
}