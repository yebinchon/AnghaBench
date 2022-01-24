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
typedef  scalar_t__ u64 ;
struct rq_wb {int /*<<< orphan*/  sync_cookie; int /*<<< orphan*/  sync_issue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC3(struct rq_wb *rwb)
{
	u64 now, issue = FUNC0(rwb->sync_issue);

	if (!issue || !rwb->sync_cookie)
		return 0;

	now = FUNC2(FUNC1());
	return now - issue;
}