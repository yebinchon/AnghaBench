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
struct omap_device {TYPE_1__* pdev; } ;
struct of_phandle_args {int /*<<< orphan*/  np; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int FUNC4 (struct clk*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 struct clk* FUNC8 (struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC10(struct omap_device *od, const char *clk_alias,
		       const char *clk_name)
{
	struct clk *r;
	int rc;

	if (!clk_alias || !clk_name)
		return;

	FUNC5(&od->pdev->dev, "Creating %s -> %s\n", clk_alias, clk_name);

	r = FUNC2(FUNC7(&od->pdev->dev), clk_alias);
	if (!FUNC0(r)) {
		FUNC5(&od->pdev->dev,
			 "alias %s already exists\n", clk_alias);
		FUNC3(r);
		return;
	}

	r = FUNC2(NULL, clk_name);

	if (FUNC0(r)) {
		struct of_phandle_args clkspec;

		clkspec.np = FUNC9(NULL, clk_name);

		r = FUNC8(&clkspec);

		rc = FUNC4(r, clk_alias,
					 FUNC7(&od->pdev->dev));
	} else {
		rc = FUNC1(clk_alias, FUNC7(&od->pdev->dev),
				   clk_name, NULL);
	}

	if (rc) {
		if (rc == -ENODEV || rc == -ENOMEM)
			FUNC6(&od->pdev->dev,
				"clkdev_alloc for %s failed\n", clk_alias);
		else
			FUNC6(&od->pdev->dev,
				"clk_get for %s failed\n", clk_name);
	}
}