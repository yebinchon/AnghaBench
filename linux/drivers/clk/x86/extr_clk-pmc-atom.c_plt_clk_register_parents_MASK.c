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
struct pmc_clk {scalar_t__ name; int /*<<< orphan*/  freq; int /*<<< orphan*/  parent_name; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk_plt_data {int nparents; int /*<<< orphan*/ * parents; } ;

/* Variables and functions */
 int ENOMEM ; 
 char const** FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 char** FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const**,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct clk_plt_data*,unsigned int) ; 

__attribute__((used)) static const char **FUNC9(struct platform_device *pdev,
					     struct clk_plt_data *data,
					     const struct pmc_clk *clks)
{
	const char **parent_names;
	unsigned int i;
	int err;
	int nparents = 0;

	data->nparents = 0;
	while (clks[nparents].name)
		nparents++;

	data->parents = FUNC3(&pdev->dev, nparents,
				     sizeof(*data->parents), GFP_KERNEL);
	if (!data->parents)
		return FUNC0(-ENOMEM);

	parent_names = FUNC4(nparents, sizeof(*parent_names),
			       GFP_KERNEL);
	if (!parent_names)
		return FUNC0(-ENOMEM);

	for (i = 0; i < nparents; i++) {
		data->parents[i] =
			FUNC7(pdev, clks[i].name,
						    clks[i].parent_name,
						    clks[i].freq);
		if (FUNC1(data->parents[i])) {
			err = FUNC2(data->parents[i]);
			goto err_unreg;
		}
		parent_names[i] = FUNC5(clks[i].name, GFP_KERNEL);
	}

	data->nparents = nparents;
	return parent_names;

err_unreg:
	FUNC8(data, i);
	FUNC6(parent_names, i);
	return FUNC0(err);
}