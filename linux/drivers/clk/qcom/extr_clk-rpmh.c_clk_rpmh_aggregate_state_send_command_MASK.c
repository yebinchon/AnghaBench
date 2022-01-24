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
struct clk_rpmh {int state; int valid_state_mask; int aggr_state; int /*<<< orphan*/  res_name; TYPE_1__* peer; } ;
struct TYPE_2__ {int state; int aggr_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct clk_rpmh*) ; 

__attribute__((used)) static int FUNC2(struct clk_rpmh *c,
						bool enable)
{
	int ret;

	/* Nothing required to be done if already off or on */
	if (enable == c->state)
		return 0;

	c->state = enable ? c->valid_state_mask : 0;
	c->aggr_state = c->state | c->peer->state;
	c->peer->aggr_state = c->aggr_state;

	ret = FUNC1(c);
	if (!ret)
		return 0;

	if (ret && enable)
		c->state = 0;
	else if (ret)
		c->state = c->valid_state_mask;

	FUNC0(1, "clk: %s failed to %s\n", c->res_name,
	     enable ? "enable" : "disable");
	return ret;
}