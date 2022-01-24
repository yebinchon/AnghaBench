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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rq_wb*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rq_wb*) ; 

__attribute__((used)) static void FUNC4(struct rq_wb *rwb)
{
	if (!FUNC1(&rwb->rq_depth))
		return;
	FUNC0(rwb);
	rwb->unknown_cnt = 0;
	FUNC3(rwb);
	FUNC2(rwb, "scale up");
}