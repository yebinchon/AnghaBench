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
struct rq_wb {struct request* sync_cookie; int /*<<< orphan*/  last_comp; scalar_t__ sync_issue; } ;
struct rq_qos {int dummy; } ;
struct request {int dummy; } ;

/* Variables and functions */
 struct rq_wb* FUNC0 (struct rq_qos*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rq_qos*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rq_wb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 
 scalar_t__ FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct request*) ; 

__attribute__((used)) static void FUNC8(struct rq_qos *rqos, struct request *rq)
{
	struct rq_wb *rwb = FUNC0(rqos);

	if (!FUNC7(rq)) {
		if (rwb->sync_cookie == rq) {
			rwb->sync_issue = 0;
			rwb->sync_cookie = NULL;
		}

		if (FUNC6(rq))
			FUNC3(rwb, &rwb->last_comp);
	} else {
		FUNC1(rq == rwb->sync_cookie);
		FUNC2(rqos, FUNC5(rq));
	}
	FUNC4(rq);
}