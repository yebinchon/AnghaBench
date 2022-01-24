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
struct clk_rpm {unsigned long rate; scalar_t__ enabled; struct clk_rpm* peer; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct clk_rpm*,unsigned long) ; 
 int FUNC1 (struct clk_rpm*,unsigned long) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpm_clk_lock ; 
 int /*<<< orphan*/  FUNC5 (struct clk_rpm*,unsigned long,unsigned long*,unsigned long*) ; 
 struct clk_rpm* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw,
			    unsigned long rate, unsigned long parent_rate)
{
	struct clk_rpm *r = FUNC6(hw);
	struct clk_rpm *peer = r->peer;
	unsigned long active_rate, sleep_rate;
	unsigned long this_rate = 0, this_sleep_rate = 0;
	unsigned long peer_rate = 0, peer_sleep_rate = 0;
	int ret = 0;

	FUNC3(&rpm_clk_lock);

	if (!r->enabled)
		goto out;

	FUNC5(r, rate, &this_rate, &this_sleep_rate);

	/* Take peer clock's rate into account only if it's enabled. */
	if (peer->enabled)
		FUNC5(peer, peer->rate,
				&peer_rate, &peer_sleep_rate);

	active_rate = FUNC2(this_rate, peer_rate);
	ret = FUNC0(r, active_rate);
	if (ret)
		goto out;

	sleep_rate = FUNC2(this_sleep_rate, peer_sleep_rate);
	ret = FUNC1(r, sleep_rate);
	if (ret)
		goto out;

	r->rate = rate;

out:
	FUNC4(&rpm_clk_lock);

	return ret;
}