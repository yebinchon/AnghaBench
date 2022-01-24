#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int min_timeout; int max_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct mcs814x_wdt {TYPE_1__ wdt_dev; int /*<<< orphan*/  regs; struct clk* clk; int /*<<< orphan*/  lock; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int WDT_MAX_VALUE ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mcs814x_wdt*) ; 
 struct mcs814x_wdt* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcs814x_wdt_ident ; 
 int /*<<< orphan*/  mcs814x_wdt_ops ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct mcs814x_wdt*) ; 
 int /*<<< orphan*/  FUNC12 (struct resource*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,struct mcs814x_wdt*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct resource *res;
	struct mcs814x_wdt *wdt;
	int ret;
	struct clk *clk;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	clk = FUNC2(NULL, "wdt");
	if (FUNC0(clk)) {
		FUNC5(&pdev->dev, "failed to get watchdog clock\n");
		return FUNC1(clk);
	}

	wdt = FUNC9(sizeof(*wdt), GFP_KERNEL);
	if (!wdt) {
		ret = -ENOMEM;
		goto out_clk;
	}

	FUNC13(&wdt->lock);
	wdt->clk = clk;
	wdt->wdt_dev.info = &mcs814x_wdt_ident;
	wdt->wdt_dev.ops = &mcs814x_wdt_ops;
	wdt->wdt_dev.min_timeout = 1;
	/* approximately 10995 secs */
	wdt->wdt_dev.max_timeout = (WDT_MAX_VALUE / FUNC3(clk));

	FUNC11(pdev, wdt);

	/* only ioremap registers, because the register is shared */
	wdt->regs = FUNC7(&pdev->dev, res->start, FUNC12(res));
	if (!wdt->regs) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC15(&wdt->wdt_dev, wdt);

	ret = FUNC14(&wdt->wdt_dev);
	if (ret) {
		FUNC5(&pdev->dev, "cannot register watchdog: %d\n", ret);
		goto out;
	}

	FUNC6(&pdev->dev, "registered\n");
	return 0;

out:
	FUNC11(pdev, NULL);
	FUNC8(wdt);
out_clk:
	FUNC4(clk);
	return ret;
}