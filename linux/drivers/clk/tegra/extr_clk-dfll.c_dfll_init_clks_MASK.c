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
struct tegra_dfll {void* i2c_clk; int /*<<< orphan*/  i2c_clk_rate; int /*<<< orphan*/  dev; void* soc_clk; void* ref_clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct tegra_dfll *td)
{
	td->ref_clk = FUNC4(td->dev, "ref");
	if (FUNC0(td->ref_clk)) {
		FUNC3(td->dev, "missing ref clock\n");
		return FUNC1(td->ref_clk);
	}

	td->soc_clk = FUNC4(td->dev, "soc");
	if (FUNC0(td->soc_clk)) {
		FUNC3(td->dev, "missing soc clock\n");
		return FUNC1(td->soc_clk);
	}

	td->i2c_clk = FUNC4(td->dev, "i2c");
	if (FUNC0(td->i2c_clk)) {
		FUNC3(td->dev, "missing i2c clock\n");
		return FUNC1(td->i2c_clk);
	}
	td->i2c_clk_rate = FUNC2(td->i2c_clk);

	return 0;
}