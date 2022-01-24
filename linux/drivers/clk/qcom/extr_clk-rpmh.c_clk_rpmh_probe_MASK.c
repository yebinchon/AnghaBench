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
typedef  scalar_t__ u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk_rpmh_desc {int num_clks; struct clk_hw** clks; } ;
struct clk_rpmh {unsigned long long unit; int /*<<< orphan*/ * dev; int /*<<< orphan*/  res_addr; int /*<<< orphan*/  res_name; } ;
struct clk_hw {TYPE_1__* init; } ;
struct bcm_db {int /*<<< orphan*/  unit; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct bcm_db const*) ; 
 int FUNC1 (struct bcm_db const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct bcm_db* FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct clk_hw*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 unsigned long long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_clk_rpmh_hw_get ; 
 struct clk_rpmh_desc* FUNC9 (int /*<<< orphan*/ *) ; 
 struct clk_rpmh* FUNC10 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct clk_hw **hw_clks;
	struct clk_rpmh *rpmh_clk;
	const struct clk_rpmh_desc *desc;
	int ret, i;

	desc = FUNC9(&pdev->dev);
	if (!desc)
		return -ENODEV;

	hw_clks = desc->clks;

	for (i = 0; i < desc->num_clks; i++) {
		const char *name = hw_clks[i]->init->name;
		u32 res_addr;
		size_t aux_data_len;
		const struct bcm_db *data;

		rpmh_clk = FUNC10(hw_clks[i]);
		res_addr = FUNC2(rpmh_clk->res_name);
		if (!res_addr) {
			FUNC5(&pdev->dev, "missing RPMh resource address for %s\n",
				rpmh_clk->res_name);
			return -ENODEV;
		}

		data = FUNC3(rpmh_clk->res_name, &aux_data_len);
		if (FUNC0(data)) {
			ret = FUNC1(data);
			FUNC5(&pdev->dev,
				"error reading RPMh aux data for %s (%d)\n",
				rpmh_clk->res_name, ret);
			return ret;
		}

		/* Convert unit from Khz to Hz */
		if (aux_data_len == sizeof(*data))
			rpmh_clk->unit = FUNC8(data->unit) * 1000ULL;

		rpmh_clk->res_addr += res_addr;
		rpmh_clk->dev = &pdev->dev;

		ret = FUNC6(&pdev->dev, hw_clks[i]);
		if (ret) {
			FUNC5(&pdev->dev, "failed to register %s\n", name);
			return ret;
		}
	}

	/* typecast to silence compiler warning */
	ret = FUNC7(&pdev->dev, of_clk_rpmh_hw_get,
					  (void *)desc);
	if (ret) {
		FUNC5(&pdev->dev, "Failed to add clock provider\n");
		return ret;
	}

	FUNC4(&pdev->dev, "Registered RPMh clocks\n");

	return 0;
}