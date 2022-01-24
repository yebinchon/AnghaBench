#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sec_pmic_dev {int dummy; } ;
struct TYPE_13__ {TYPE_1__* init; } ;
struct s2mps11_clk {int mask; unsigned int reg; int /*<<< orphan*/  lookup; int /*<<< orphan*/  clk_np; TYPE_7__ hw; int /*<<< orphan*/  clk; struct sec_pmic_dev* iodev; } ;
struct TYPE_12__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct clk_hw_onecell_data {int num; TYPE_7__** hws; } ;
typedef  enum sec_device_type { ____Placeholder_sec_device_type } sec_device_type ;
struct TYPE_11__ {int driver_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  S2MPS11X 131 
 int S2MPS11_CLKS_NUM ; 
 int S2MPS11_CLK_CP ; 
 unsigned int S2MPS11_REG_RTC_CTRL ; 
#define  S2MPS13X 130 
 unsigned int S2MPS13_REG_RTCCTRL ; 
#define  S2MPS14X 129 
 unsigned int S2MPS14_REG_RTCCTRL ; 
#define  S5M8767X 128 
 unsigned int S5M8767_REG_CTRL1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,...) ; 
 struct sec_pmic_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_7__*) ; 
 struct s2mps11_clk* FUNC7 (TYPE_4__*,int,int,int /*<<< orphan*/ ) ; 
 struct clk_hw_onecell_data* FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hws ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_hw_onecell_data*) ; 
 int /*<<< orphan*/  of_clk_hw_onecell_get ; 
 TYPE_3__* FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct s2mps11_clk*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,TYPE_1__*) ; 
 TYPE_1__* s2mps11_clks_init ; 
 int /*<<< orphan*/  FUNC13 (struct clk_hw_onecell_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct sec_pmic_dev *iodev = FUNC5(pdev->dev.parent);
	struct s2mps11_clk *s2mps11_clks;
	struct clk_hw_onecell_data *clk_data;
	unsigned int s2mps11_reg;
	int i, ret = 0;
	enum sec_device_type hwid = FUNC10(pdev)->driver_data;

	s2mps11_clks = FUNC7(&pdev->dev, S2MPS11_CLKS_NUM,
				sizeof(*s2mps11_clks), GFP_KERNEL);
	if (!s2mps11_clks)
		return -ENOMEM;

	clk_data = FUNC8(&pdev->dev,
				FUNC13(clk_data, hws, S2MPS11_CLKS_NUM),
				GFP_KERNEL);
	if (!clk_data)
		return -ENOMEM;

	switch (hwid) {
	case S2MPS11X:
		s2mps11_reg = S2MPS11_REG_RTC_CTRL;
		break;
	case S2MPS13X:
		s2mps11_reg = S2MPS13_REG_RTCCTRL;
		break;
	case S2MPS14X:
		s2mps11_reg = S2MPS14_REG_RTCCTRL;
		break;
	case S5M8767X:
		s2mps11_reg = S5M8767_REG_CTRL1;
		break;
	default:
		FUNC4(&pdev->dev, "Invalid device type\n");
		return -EINVAL;
	}

	/* Store clocks of_node in first element of s2mps11_clks array */
	s2mps11_clks->clk_np = FUNC12(pdev, s2mps11_clks_init);
	if (FUNC0(s2mps11_clks->clk_np))
		return FUNC1(s2mps11_clks->clk_np);

	for (i = 0; i < S2MPS11_CLKS_NUM; i++) {
		if (i == S2MPS11_CLK_CP && hwid == S2MPS14X)
			continue; /* Skip clocks not present in some devices */
		s2mps11_clks[i].iodev = iodev;
		s2mps11_clks[i].hw.init = &s2mps11_clks_init[i];
		s2mps11_clks[i].mask = 1 << i;
		s2mps11_clks[i].reg = s2mps11_reg;

		s2mps11_clks[i].clk = FUNC6(&pdev->dev,
							&s2mps11_clks[i].hw);
		if (FUNC0(s2mps11_clks[i].clk)) {
			FUNC4(&pdev->dev, "Fail to register : %s\n",
						s2mps11_clks_init[i].name);
			ret = FUNC1(s2mps11_clks[i].clk);
			goto err_reg;
		}

		s2mps11_clks[i].lookup = FUNC3(&s2mps11_clks[i].hw,
					s2mps11_clks_init[i].name, NULL);
		if (!s2mps11_clks[i].lookup) {
			ret = -ENOMEM;
			goto err_reg;
		}
		clk_data->hws[i] = &s2mps11_clks[i].hw;
	}

	clk_data->num = S2MPS11_CLKS_NUM;
	FUNC9(s2mps11_clks->clk_np, of_clk_hw_onecell_get,
			       clk_data);

	FUNC11(pdev, s2mps11_clks);

	return ret;

err_reg:
	while (--i >= 0)
		FUNC2(s2mps11_clks[i].lookup);

	return ret;
}