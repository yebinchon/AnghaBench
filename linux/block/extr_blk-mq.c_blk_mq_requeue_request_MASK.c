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
struct request {int /*<<< orphan*/  queuelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct request *rq, bool kick_requeue_list)
{
	FUNC1(rq);

	/* this request will be re-inserted to io scheduler queue */
	FUNC3(rq);

	FUNC0(!FUNC4(&rq->queuelist));
	FUNC2(rq, true, kick_requeue_list);
}