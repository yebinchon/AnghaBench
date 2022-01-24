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
struct nullb_queue {int /*<<< orphan*/  dev; int /*<<< orphan*/  queue_depth; int /*<<< orphan*/  wait; } ;
struct nullb {int /*<<< orphan*/  dev; int /*<<< orphan*/  queue_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nullb *nullb, struct nullb_queue *nq)
{
	FUNC0(!nullb);
	FUNC0(!nq);

	FUNC1(&nq->wait);
	nq->queue_depth = nullb->queue_depth;
	nq->dev = nullb->dev;
}