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
struct rq_wb {int /*<<< orphan*/  cb; } ;
struct rq_qos {struct request_queue* q; } ;
struct request_queue {int dummy; } ;

/* Variables and functions */
 struct rq_wb* FUNC0 (struct rq_qos*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rq_wb*) ; 

__attribute__((used)) static void FUNC4(struct rq_qos *rqos)
{
	struct rq_wb *rwb = FUNC0(rqos);
	struct request_queue *q = rqos->q;

	FUNC2(q, rwb->cb);
	FUNC1(rwb->cb);
	FUNC3(rwb);
}