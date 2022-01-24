#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct property {int length; int /*<<< orphan*/ * value; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;
struct dev_pm_opp {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_22__ {unsigned long frequency; } ;
struct TYPE_21__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int CPUFREQ_ETERNAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int FREQ_1P2_GHZ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IMX6Q_CPUFREQ_CLK_NUM ; 
 int /*<<< orphan*/  IMX6UL_CPUFREQ_CLK_NUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long PU_SOC_VOLTAGE_HIGH ; 
 unsigned long PU_SOC_VOLTAGE_NORMAL ; 
 int /*<<< orphan*/  arm_reg ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clks ; 
 TYPE_1__* cpu_dev ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,...) ; 
 struct dev_pm_opp* FUNC8 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_6__**) ; 
 int FUNC10 (TYPE_1__*) ; 
 unsigned long FUNC11 (struct dev_pm_opp*) ; 
 int FUNC12 (TYPE_1__*,TYPE_6__**) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char*) ; 
 unsigned long* FUNC17 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int free_opp ; 
 TYPE_6__* freq_table ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ ) ; 
 unsigned long* imx6_soc_volt ; 
 int /*<<< orphan*/  imx6q_cpufreq_driver ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int FUNC20 (TYPE_1__*) ; 
 int max_freq ; 
 int /*<<< orphan*/  num_clks ; 
 struct property* FUNC21 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (char*) ; 
 struct device_node* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct device_node*) ; 
 scalar_t__ FUNC25 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 int /*<<< orphan*/  pu_reg ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int soc_opp_count ; 
 int /*<<< orphan*/  soc_reg ; 
 int transition_latency ; 

__attribute__((used)) static int FUNC31(struct platform_device *pdev)
{
	struct device_node *np;
	struct dev_pm_opp *opp;
	unsigned long min_volt, max_volt;
	int num, ret;
	const struct property *prop;
	const __be32 *val;
	u32 nr, i, j;

	cpu_dev = FUNC18(0);
	if (!cpu_dev) {
		FUNC26("failed to get cpu0 device\n");
		return -ENODEV;
	}

	np = FUNC23(cpu_dev->of_node);
	if (!np) {
		FUNC7(cpu_dev, "failed to find cpu0 node\n");
		return -ENOENT;
	}

	if (FUNC22("fsl,imx6ul") ||
	    FUNC22("fsl,imx6ull"))
		num_clks = IMX6UL_CPUFREQ_CLK_NUM;
	else
		num_clks = IMX6Q_CPUFREQ_CLK_NUM;

	ret = FUNC3(cpu_dev, num_clks, clks);
	if (ret)
		goto put_node;

	arm_reg = FUNC27(cpu_dev, "arm");
	pu_reg = FUNC28(cpu_dev, "pu");
	soc_reg = FUNC27(cpu_dev, "soc");
	if (FUNC1(arm_reg) == -EPROBE_DEFER ||
			FUNC1(soc_reg) == -EPROBE_DEFER ||
			FUNC1(pu_reg) == -EPROBE_DEFER) {
		ret = -EPROBE_DEFER;
		FUNC6(cpu_dev, "regulators not ready, defer\n");
		goto put_reg;
	}
	if (FUNC0(arm_reg) || FUNC0(soc_reg)) {
		FUNC7(cpu_dev, "failed to get regulators\n");
		ret = -ENOENT;
		goto put_reg;
	}

	ret = FUNC13(cpu_dev);
	if (ret < 0) {
		FUNC7(cpu_dev, "failed to init OPP table: %d\n", ret);
		goto put_reg;
	}

	if (FUNC22("fsl,imx6ul") ||
	    FUNC22("fsl,imx6ull")) {
		ret = FUNC20(cpu_dev);
		if (ret) {
			if (ret == -EPROBE_DEFER)
				goto put_node;

			FUNC7(cpu_dev, "failed to read ocotp: %d\n",
				ret);
			goto put_node;
		}
	} else {
		FUNC19(cpu_dev);
	}

	/* Because we have added the OPPs here, we must free them */
	free_opp = true;
	num = FUNC10(cpu_dev);
	if (num < 0) {
		ret = num;
		FUNC7(cpu_dev, "no OPP table is found: %d\n", ret);
		goto out_free_opp;
	}

	ret = FUNC12(cpu_dev, &freq_table);
	if (ret) {
		FUNC7(cpu_dev, "failed to init cpufreq table: %d\n", ret);
		goto out_free_opp;
	}

	/* Make imx6_soc_volt array's size same as arm opp number */
	imx6_soc_volt = FUNC17(cpu_dev, num, sizeof(*imx6_soc_volt),
				     GFP_KERNEL);
	if (imx6_soc_volt == NULL) {
		ret = -ENOMEM;
		goto free_freq_table;
	}

	prop = FUNC21(np, "fsl,soc-operating-points", NULL);
	if (!prop || !prop->value)
		goto soc_opp_out;

	/*
	 * Each OPP is a set of tuples consisting of frequency and
	 * voltage like <freq-kHz vol-uV>.
	 */
	nr = prop->length / sizeof(u32);
	if (nr % 2 || (nr / 2) < num)
		goto soc_opp_out;

	for (j = 0; j < num; j++) {
		val = prop->value;
		for (i = 0; i < nr / 2; i++) {
			unsigned long freq = FUNC2(val++);
			unsigned long volt = FUNC2(val++);
			if (freq_table[j].frequency == freq) {
				imx6_soc_volt[soc_opp_count++] = volt;
				break;
			}
		}
	}

soc_opp_out:
	/* use fixed soc opp volt if no valid soc opp info found in dtb */
	if (soc_opp_count != num) {
		FUNC16(cpu_dev, "can NOT find valid fsl,soc-operating-points property in dtb, use default value!\n");
		for (j = 0; j < num; j++)
			imx6_soc_volt[j] = PU_SOC_VOLTAGE_NORMAL;
		if (freq_table[num - 1].frequency * 1000 == FREQ_1P2_GHZ)
			imx6_soc_volt[num - 1] = PU_SOC_VOLTAGE_HIGH;
	}

	if (FUNC25(np, "clock-latency", &transition_latency))
		transition_latency = CPUFREQ_ETERNAL;

	/*
	 * Calculate the ramp time for max voltage change in the
	 * VDDSOC and VDDPU regulators.
	 */
	ret = FUNC30(soc_reg, imx6_soc_volt[0], imx6_soc_volt[num - 1]);
	if (ret > 0)
		transition_latency += ret * 1000;
	if (!FUNC0(pu_reg)) {
		ret = FUNC30(pu_reg, imx6_soc_volt[0], imx6_soc_volt[num - 1]);
		if (ret > 0)
			transition_latency += ret * 1000;
	}

	/*
	 * OPP is maintained in order of increasing frequency, and
	 * freq_table initialised from OPP is therefore sorted in the
	 * same order.
	 */
	max_freq = freq_table[--num].frequency;
	opp = FUNC8(cpu_dev,
				  freq_table[0].frequency * 1000, true);
	min_volt = FUNC11(opp);
	FUNC15(opp);
	opp = FUNC8(cpu_dev, max_freq * 1000, true);
	max_volt = FUNC11(opp);
	FUNC15(opp);

	ret = FUNC30(arm_reg, min_volt, max_volt);
	if (ret > 0)
		transition_latency += ret * 1000;

	ret = FUNC5(&imx6q_cpufreq_driver);
	if (ret) {
		FUNC7(cpu_dev, "failed register driver: %d\n", ret);
		goto free_freq_table;
	}

	FUNC24(np);
	return 0;

free_freq_table:
	FUNC9(cpu_dev, &freq_table);
out_free_opp:
	if (free_opp)
		FUNC14(cpu_dev);
put_reg:
	if (!FUNC0(arm_reg))
		FUNC29(arm_reg);
	if (!FUNC0(pu_reg))
		FUNC29(pu_reg);
	if (!FUNC0(soc_reg))
		FUNC29(soc_reg);

	FUNC4(num_clks, clks);
put_node:
	FUNC24(np);

	return ret;
}