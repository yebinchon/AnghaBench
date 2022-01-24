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
struct pic32_sec_osc_data {scalar_t__ status_reg; scalar_t__ enable_reg; int /*<<< orphan*/  status_mask; int /*<<< orphan*/  enable_mask; int /*<<< orphan*/  fixed_rate; int /*<<< orphan*/  init_data; } ;
struct TYPE_2__ {int /*<<< orphan*/ * init; } ;
struct pic32_sec_osc {TYPE_1__ hw; scalar_t__ status_reg; scalar_t__ enable_reg; int /*<<< orphan*/  status_mask; int /*<<< orphan*/  enable_mask; int /*<<< orphan*/  fixed_rate; struct pic32_clk_common* core; } ;
struct pic32_clk_common {int /*<<< orphan*/  dev; scalar_t__ iobase; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct clk* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct pic32_sec_osc* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct clk *FUNC3(const struct pic32_sec_osc_data *data,
				    struct pic32_clk_common *core)
{
	struct pic32_sec_osc *sosc;

	sosc = FUNC2(core->dev, sizeof(*sosc), GFP_KERNEL);
	if (!sosc)
		return FUNC0(-ENOMEM);

	sosc->core = core;
	sosc->hw.init = &data->init_data;
	sosc->fixed_rate = data->fixed_rate;
	sosc->enable_mask = data->enable_mask;
	sosc->status_mask = data->status_mask;
	sosc->enable_reg = data->enable_reg + core->iobase;
	sosc->status_reg = data->status_reg + core->iobase;

	return FUNC1(core->dev, &sosc->hw);
}