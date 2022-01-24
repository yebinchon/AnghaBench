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
struct rq_wb {scalar_t__ sync_issue; struct request* sync_cookie; } ;
struct rq_qos {int dummy; } ;
struct request {scalar_t__ io_start_time_ns; } ;

/* Variables and functions */
 struct rq_wb* FUNC0 (struct rq_qos*) ; 
 int /*<<< orphan*/  FUNC1 (struct rq_wb*) ; 
 scalar_t__ FUNC2 (struct request*) ; 

__attribute__((used)) static void FUNC3(struct rq_qos *rqos, struct request *rq)
{
	struct rq_wb *rwb = FUNC0(rqos);

	if (!FUNC1(rwb))
		return;

	/*
	 * Track sync issue, in case it takes a long time to complete. Allows us
	 * to react quicker, if a sync IO takes a long time to complete. Note
	 * that this is just a hint. The request can go away when it completes,
	 * so it's important we never dereference it. We only use the address to
	 * compare with, which is why we store the sync_issue time locally.
	 */
	if (FUNC2(rq) && !rwb->sync_issue) {
		rwb->sync_cookie = rq;
		rwb->sync_issue = rq->io_start_time_ns;
	}
}