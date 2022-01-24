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
typedef  int /*<<< orphan*/  u32 ;
struct scpi_clk_data {int clk_num; struct scpi_clk** clk; } ;
struct scpi_clk {int /*<<< orphan*/  id; } ;
struct of_device_id {int dummy; } ;
typedef  char const device_node ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char const*) ; 
 struct scpi_clk** FUNC2 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct scpi_clk_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct scpi_clk* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,struct scpi_clk_data*) ; 
 int FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (char const*,char*,int,char const**) ; 
 scalar_t__ FUNC8 (char const*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device*,struct of_device_id const*,struct scpi_clk*,char const*) ; 
 int /*<<< orphan*/  scpi_of_clk_src_get ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct device_node *np,
			const struct of_device_id *match)
{
	int idx, count, err;
	struct scpi_clk_data *clk_data;

	count = FUNC6(np, "clock-output-names");
	if (count < 0) {
		FUNC1(dev, "%pOFn: invalid clock output count\n", np);
		return -EINVAL;
	}

	clk_data = FUNC3(dev, sizeof(*clk_data), GFP_KERNEL);
	if (!clk_data)
		return -ENOMEM;

	clk_data->clk_num = count;
	clk_data->clk = FUNC2(dev, count, sizeof(*clk_data->clk),
				     GFP_KERNEL);
	if (!clk_data->clk)
		return -ENOMEM;

	for (idx = 0; idx < count; idx++) {
		struct scpi_clk *sclk;
		const char *name;
		u32 val;

		sclk = FUNC4(dev, sizeof(*sclk), GFP_KERNEL);
		if (!sclk)
			return -ENOMEM;

		if (FUNC7(np, "clock-output-names",
						  idx, &name)) {
			FUNC1(dev, "invalid clock name @ %pOFn\n", np);
			return -EINVAL;
		}

		if (FUNC8(np, "clock-indices",
					       idx, &val)) {
			FUNC1(dev, "invalid clock index @ %pOFn\n", np);
			return -EINVAL;
		}

		sclk->id = val;

		err = FUNC9(dev, match, sclk, name);
		if (err) {
			FUNC1(dev, "failed to register clock '%s'\n", name);
			return err;
		}

		FUNC0(dev, "Registered clock '%s'\n", name);
		clk_data->clk[idx] = sclk;
	}

	return FUNC5(np, scpi_of_clk_src_get, clk_data);
}