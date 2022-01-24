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
struct ti_adpll_data {struct clk** parent_clocks; int /*<<< orphan*/  dev; int /*<<< orphan*/ * parent_names; TYPE_1__* c; int /*<<< orphan*/  np; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int nr_max_inputs; scalar_t__ is_type_s; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 size_t TI_ADPLL_CLKINP ; 
 size_t TI_ADPLL_CLKINPHIF ; 
 size_t TI_ADPLL_CLKINPULOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,...) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct ti_adpll_data *d)
{
	const char *error = "need at least %i inputs";
	struct clk *clock;
	int nr_inputs;

	nr_inputs = FUNC4(d->np);
	if (nr_inputs < d->c->nr_max_inputs) {
		FUNC2(d->dev, error, nr_inputs);
		return -EINVAL;
	}
	FUNC5(d->np, d->parent_names, nr_inputs);

	clock = FUNC3(d->dev, d->parent_names[0]);
	if (FUNC0(clock)) {
		FUNC2(d->dev, "could not get clkinp\n");
		return FUNC1(clock);
	}
	d->parent_clocks[TI_ADPLL_CLKINP] = clock;

	clock = FUNC3(d->dev, d->parent_names[1]);
	if (FUNC0(clock)) {
		FUNC2(d->dev, "could not get clkinpulow clock\n");
		return FUNC1(clock);
	}
	d->parent_clocks[TI_ADPLL_CLKINPULOW] = clock;

	if (d->c->is_type_s) {
		clock =  FUNC3(d->dev, d->parent_names[2]);
		if (FUNC0(clock)) {
			FUNC2(d->dev, "could not get clkinphif clock\n");
			return FUNC1(clock);
		}
		d->parent_clocks[TI_ADPLL_CLKINPHIF] = clock;
	}

	return 0;
}