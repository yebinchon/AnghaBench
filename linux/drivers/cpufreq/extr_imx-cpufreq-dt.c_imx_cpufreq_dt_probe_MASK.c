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
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int IMX8MN_OCOTP_CFG3_SPEED_GRADE_MASK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int OCOTP_CFG3_MKT_SEGMENT_MASK ; 
 int OCOTP_CFG3_MKT_SEGMENT_SHIFT ; 
 int OCOTP_CFG3_SPEED_GRADE_MASK ; 
 int OCOTP_CFG3_SPEED_GRADE_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpufreq_dt_pdev ; 
 int /*<<< orphan*/  cpufreq_opp_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int*,int) ; 
 struct device* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,char*,int*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *cpu_dev = FUNC7(0);
	u32 cell_value, supported_hw[2];
	int speed_grade, mkt_segment;
	int ret;

	ret = FUNC8(cpu_dev, "speed_grade", &cell_value);
	if (ret)
		return ret;

	if (FUNC9("fsl,imx8mn"))
		speed_grade = (cell_value & IMX8MN_OCOTP_CFG3_SPEED_GRADE_MASK)
			      >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
	else
		speed_grade = (cell_value & OCOTP_CFG3_SPEED_GRADE_MASK)
			      >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
	mkt_segment = (cell_value & OCOTP_CFG3_MKT_SEGMENT_MASK) >> OCOTP_CFG3_MKT_SEGMENT_SHIFT;

	/*
	 * Early samples without fuses written report "0 0" which means
	 * consumer segment and minimum speed grading.
	 *
	 * According to datasheet minimum speed grading is not supported for
	 * consumer parts so clamp to 1 to avoid warning for "no OPPs"
	 *
	 * Applies to i.MX8M series SoCs.
	 */
	if (mkt_segment == 0 && speed_grade == 0 && (
			FUNC9("fsl,imx8mm") ||
			FUNC9("fsl,imx8mn") ||
			FUNC9("fsl,imx8mq")))
		speed_grade = 1;

	supported_hw[0] = FUNC0(speed_grade);
	supported_hw[1] = FUNC0(mkt_segment);
	FUNC4(&pdev->dev, "cpu speed grade %d mkt segment %d supported-hw %#x %#x\n",
			speed_grade, mkt_segment, supported_hw[0], supported_hw[1]);

	cpufreq_opp_table = FUNC6(cpu_dev, supported_hw, 2);
	if (FUNC1(cpufreq_opp_table)) {
		ret = FUNC2(cpufreq_opp_table);
		FUNC3(&pdev->dev, "Failed to set supported opp: %d\n", ret);
		return ret;
	}

	cpufreq_dt_pdev = FUNC10(
			&pdev->dev, "cpufreq-dt", -1, NULL, 0);
	if (FUNC1(cpufreq_dt_pdev)) {
		FUNC5(cpufreq_opp_table);
		ret = FUNC2(cpufreq_dt_pdev);
		FUNC3(&pdev->dev, "Failed to register cpufreq-dt: %d\n", ret);
		return ret;
	}

	return 0;
}