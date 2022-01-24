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
struct ti_adpll_platform_data {int dummy; } ;
struct ti_adpll_data {int /*<<< orphan*/  outputs; struct device_node* np; int /*<<< orphan*/  clocks; struct device* dev; int /*<<< orphan*/  iobase; int /*<<< orphan*/  pa; int /*<<< orphan*/  lock; struct ti_adpll_platform_data const* c; } ;
struct ti_adpll_clock {int dummy; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {struct ti_adpll_platform_data* data; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TI_ADPLL_NR_CLOCKS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct ti_adpll_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ti_adpll_data* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,struct device*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ti_adpll_data*) ; 
 int FUNC13 (struct ti_adpll_data*) ; 
 int FUNC14 (struct ti_adpll_data*) ; 
 int FUNC15 (struct ti_adpll_data*) ; 
 int FUNC16 (struct ti_adpll_data*) ; 
 int FUNC17 (struct ti_adpll_data*) ; 
 int /*<<< orphan*/  ti_adpll_match ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct device *dev = &pdev->dev;
	const struct of_device_id *match;
	const struct ti_adpll_platform_data *pdata;
	struct ti_adpll_data *d;
	struct resource *res;
	int err;

	match = FUNC9(ti_adpll_match, dev);
	if (match)
		pdata = match->data;
	else
		return -ENODEV;

	d = FUNC7(dev, sizeof(*d), GFP_KERNEL);
	if (!d)
		return -ENOMEM;
	d->dev = dev;
	d->np = node;
	d->c = pdata;
	FUNC4(d->dev, d);
	FUNC11(&d->lock);

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;
	d->pa = res->start;

	d->iobase = FUNC5(dev, res);
	if (FUNC0(d->iobase)) {
		FUNC3(dev, "could not get IO base: %li\n",
			FUNC1(d->iobase));
		return FUNC1(d->iobase);
	}

	err = FUNC17(d);
	if (err)
		return err;

	err = FUNC16(d);
	if (err)
		return err;

	d->clocks = FUNC6(d->dev,
				 TI_ADPLL_NR_CLOCKS,
				 sizeof(struct ti_adpll_clock),
				 GFP_KERNEL);
	if (!d->clocks)
		return -ENOMEM;

	err = FUNC15(d);
	if (err) {
		FUNC3(dev, "could not register dco: %i\n", err);
		goto free;
	}

	err = FUNC14(d);
	if (err)
		goto free;
	err = FUNC13(d);
	if (err)
		goto free;

	err = FUNC8(d->np, of_clk_src_onecell_get, &d->outputs);
	if (err)
		goto free;

	return 0;

free:
	FUNC2(1);
	FUNC12(d);

	return err;
}