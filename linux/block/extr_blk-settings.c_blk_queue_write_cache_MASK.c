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
struct request_queue {int /*<<< orphan*/  queue_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_FUA ; 
 int /*<<< orphan*/  QUEUE_FLAG_WC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int /*<<< orphan*/ ) ; 

void FUNC4(struct request_queue *q, bool wc, bool fua)
{
	if (wc)
		FUNC1(QUEUE_FLAG_WC, q);
	else
		FUNC0(QUEUE_FLAG_WC, q);
	if (fua)
		FUNC1(QUEUE_FLAG_FUA, q);
	else
		FUNC0(QUEUE_FLAG_FUA, q);

	FUNC3(q, FUNC2(QUEUE_FLAG_WC, &q->queue_flags));
}