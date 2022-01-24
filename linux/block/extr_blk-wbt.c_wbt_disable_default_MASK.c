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
struct rq_wb {scalar_t__ enable_state; scalar_t__ wb_normal; int /*<<< orphan*/  cb; } ;
struct rq_qos {int dummy; } ;
struct request_queue {int dummy; } ;

/* Variables and functions */
 struct rq_wb* FUNC0 (struct rq_qos*) ; 
 scalar_t__ WBT_STATE_ON_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rq_qos* FUNC2 (struct request_queue*) ; 

void FUNC3(struct request_queue *q)
{
	struct rq_qos *rqos = FUNC2(q);
	struct rq_wb *rwb;
	if (!rqos)
		return;
	rwb = FUNC0(rqos);
	if (rwb->enable_state == WBT_STATE_ON_DEFAULT) {
		FUNC1(rwb->cb);
		rwb->wb_normal = 0;
	}
}