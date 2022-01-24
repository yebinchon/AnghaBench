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
struct clk_rate_request {unsigned long rate; int /*<<< orphan*/  max_rate; int /*<<< orphan*/  min_rate; } ;
struct clk {int /*<<< orphan*/  core; scalar_t__ exclusive_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct clk_rate_request*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

long FUNC6(struct clk *clk, unsigned long rate)
{
	struct clk_rate_request req;
	int ret;

	if (!clk)
		return 0;

	FUNC4();

	if (clk->exclusive_count)
		FUNC2(clk->core);

	FUNC0(clk->core, &req.min_rate, &req.max_rate);
	req.rate = rate;

	ret = FUNC3(clk->core, &req);

	if (clk->exclusive_count)
		FUNC1(clk->core);

	FUNC5();

	if (ret)
		return ret;

	return req.rate;
}