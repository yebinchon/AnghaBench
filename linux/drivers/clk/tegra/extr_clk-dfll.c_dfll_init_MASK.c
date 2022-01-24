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
struct tegra_dfll {scalar_t__ ref_rate; int /*<<< orphan*/  dvco_rst; int /*<<< orphan*/  ref_clk; int /*<<< orphan*/  soc_clk; int /*<<< orphan*/  dev; TYPE_1__* soc; scalar_t__ last_unrounded_rate; int /*<<< orphan*/  i2c_clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* init_clock_trimmers ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DFLL_DISABLED ; 
 int EINVAL ; 
 scalar_t__ REF_CLOCK_RATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_dfll*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_dfll*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_dfll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_dfll*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static int FUNC14(struct tegra_dfll *td)
{
	int ret;

	td->ref_rate = FUNC0(td->ref_clk);
	if (td->ref_rate != REF_CLOCK_RATE) {
		FUNC3(td->dev, "unexpected ref clk rate %lu, expecting %lu",
			td->ref_rate, REF_CLOCK_RATE);
		return -EINVAL;
	}

	FUNC12(td->dvco_rst);

	ret = FUNC1(td->ref_clk);
	if (ret) {
		FUNC3(td->dev, "failed to prepare ref_clk\n");
		return ret;
	}

	ret = FUNC1(td->soc_clk);
	if (ret) {
		FUNC3(td->dev, "failed to prepare soc_clk\n");
		goto di_err1;
	}

	ret = FUNC1(td->i2c_clk);
	if (ret) {
		FUNC3(td->dev, "failed to prepare i2c_clk\n");
		goto di_err2;
	}

	td->last_unrounded_rate = 0;

	FUNC8(td->dev);
	FUNC9(td->dev);

	FUNC6(td, DFLL_DISABLED);
	FUNC5(td);

	if (td->soc->init_clock_trimmers)
		td->soc->init_clock_trimmers();

	FUNC7(td);

	FUNC4(td);

	FUNC10(td->dev);

	return 0;

di_err2:
	FUNC2(td->soc_clk);
di_err1:
	FUNC2(td->ref_clk);

	FUNC11(td->dvco_rst);

	return ret;
}