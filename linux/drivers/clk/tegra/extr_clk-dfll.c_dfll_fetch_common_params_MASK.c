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
struct tegra_dfll {TYPE_1__* dev; int /*<<< orphan*/  output_clock_name; int /*<<< orphan*/  cg_scale; int /*<<< orphan*/  cg; int /*<<< orphan*/  ci; int /*<<< orphan*/  cf; int /*<<< orphan*/  force_mode; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  droop_ctrl; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct tegra_dfll*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tegra_dfll *td)
{
	bool ok = true;

	ok &= FUNC3(td, "nvidia,droop-ctrl", &td->droop_ctrl);
	ok &= FUNC3(td, "nvidia,sample-rate", &td->sample_rate);
	ok &= FUNC3(td, "nvidia,force-mode", &td->force_mode);
	ok &= FUNC3(td, "nvidia,cf", &td->cf);
	ok &= FUNC3(td, "nvidia,ci", &td->ci);
	ok &= FUNC3(td, "nvidia,cg", &td->cg);
	td->cg_scale = FUNC1(td->dev->of_node,
					     "nvidia,cg-scale");

	if (FUNC2(td->dev->of_node, "clock-output-names",
				    &td->output_clock_name)) {
		FUNC0(td->dev, "missing clock-output-names property\n");
		ok = false;
	}

	return ok ? 0 : -EINVAL;
}