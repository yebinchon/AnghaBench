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
struct clk_rate_request {scalar_t__ rate; } ;
struct clk_core {int flags; scalar_t__ rate; struct clk_core* parent; } ;

/* Variables and functions */
 int CLK_SET_RATE_PARENT ; 
 scalar_t__ FUNC0 (struct clk_core*) ; 
 int FUNC1 (struct clk_core*,struct clk_rate_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_core*,struct clk_rate_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prepare_lock ; 

__attribute__((used)) static int FUNC4(struct clk_core *core,
				      struct clk_rate_request *req)
{
	FUNC3(&prepare_lock);

	if (!core) {
		req->rate = 0;
		return 0;
	}

	FUNC2(core, req);

	if (FUNC0(core))
		return FUNC1(core, req);
	else if (core->flags & CLK_SET_RATE_PARENT)
		return FUNC4(core->parent, req);

	req->rate = core->rate;
	return 0;
}