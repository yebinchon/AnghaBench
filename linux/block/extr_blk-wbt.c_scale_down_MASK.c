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
struct rq_wb {scalar_t__ unknown_cnt; int /*<<< orphan*/  rq_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rq_wb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rq_wb*,char*) ; 

__attribute__((used)) static void FUNC3(struct rq_wb *rwb, bool hard_throttle)
{
	if (!FUNC1(&rwb->rq_depth, hard_throttle))
		return;
	FUNC0(rwb);
	rwb->unknown_cnt = 0;
	FUNC2(rwb, "scale down");
}