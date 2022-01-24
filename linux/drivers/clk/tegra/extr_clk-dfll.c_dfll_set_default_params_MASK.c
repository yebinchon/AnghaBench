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
struct tegra_dfll {int sample_rate; int force_mode; int cf; int ci; int cg; int droop_ctrl; scalar_t__ cg_scale; int /*<<< orphan*/  ref_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DFLL_CONFIG ; 
 int DFLL_CONFIG_DIV_MASK ; 
 int /*<<< orphan*/  DFLL_DROOP_CTRL ; 
 int /*<<< orphan*/  DFLL_MONITOR_CTRL ; 
 int DFLL_MONITOR_CTRL_FREQ ; 
 int /*<<< orphan*/  DFLL_PARAMS ; 
 int DFLL_PARAMS_CF_PARAM_SHIFT ; 
 int DFLL_PARAMS_CG_PARAM_SHIFT ; 
 int DFLL_PARAMS_CG_SCALE ; 
 int DFLL_PARAMS_CI_PARAM_SHIFT ; 
 int DFLL_PARAMS_FORCE_MODE_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_dfll*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_dfll*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tegra_dfll *td)
{
	u32 val;

	val = FUNC1(td->ref_rate, td->sample_rate * 32);
	FUNC0(val > DFLL_CONFIG_DIV_MASK);
	FUNC3(td, val, DFLL_CONFIG);

	val = (td->force_mode << DFLL_PARAMS_FORCE_MODE_SHIFT) |
		(td->cf << DFLL_PARAMS_CF_PARAM_SHIFT) |
		(td->ci << DFLL_PARAMS_CI_PARAM_SHIFT) |
		(td->cg << DFLL_PARAMS_CG_PARAM_SHIFT) |
		(td->cg_scale ? DFLL_PARAMS_CG_SCALE : 0);
	FUNC3(td, val, DFLL_PARAMS);

	FUNC2(td);
	FUNC3(td, td->droop_ctrl, DFLL_DROOP_CTRL);
	FUNC3(td, DFLL_MONITOR_CTRL_FREQ, DFLL_MONITOR_CTRL);
}