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
struct rq_wb {int dummy; } ;
struct bio {int dummy; } ;
typedef  enum wbt_flags { ____Placeholder_wbt_flags } wbt_flags ;

/* Variables and functions */
 scalar_t__ REQ_OP_DISCARD ; 
 scalar_t__ REQ_OP_READ ; 
 int WBT_DISCARD ; 
 int WBT_KSWAPD ; 
 int WBT_READ ; 
 int WBT_TRACKED ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct rq_wb*) ; 
 scalar_t__ FUNC3 (struct rq_wb*,struct bio*) ; 

__attribute__((used)) static enum wbt_flags FUNC4(struct rq_wb *rwb, struct bio *bio)
{
	enum wbt_flags flags = 0;

	if (!FUNC2(rwb))
		return 0;

	if (FUNC0(bio) == REQ_OP_READ) {
		flags = WBT_READ;
	} else if (FUNC3(rwb, bio)) {
		if (FUNC1())
			flags |= WBT_KSWAPD;
		if (FUNC0(bio) == REQ_OP_DISCARD)
			flags |= WBT_DISCARD;
		flags |= WBT_TRACKED;
	}
	return flags;
}