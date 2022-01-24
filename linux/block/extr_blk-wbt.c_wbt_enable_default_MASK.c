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
struct rq_qos {int dummy; } ;
struct request_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_BLK_WBT_MQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 scalar_t__ FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 struct rq_qos* FUNC4 (struct request_queue*) ; 

void FUNC5(struct request_queue *q)
{
	struct rq_qos *rqos = FUNC4(q);
	/* Throttling already enabled? */
	if (rqos)
		return;

	/* Queue not registered? Maybe shutting down... */
	if (!FUNC1(q))
		return;

	if (FUNC2(q) && FUNC0(CONFIG_BLK_WBT_MQ))
		FUNC3(q);
}