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
struct bfq_queue {scalar_t__ ioprio_class; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_queue*) ; 
 scalar_t__ FUNC2 (struct bfq_queue*) ; 
 scalar_t__ FUNC3 (struct bfq_queue*) ; 

__attribute__((used)) static bool FUNC4(struct bfq_queue *bfqq,
					struct bfq_queue *new_bfqq)
{
	if (FUNC3(new_bfqq))
		return false;

	if (FUNC2(bfqq) || FUNC2(new_bfqq) ||
	    (bfqq->ioprio_class != new_bfqq->ioprio_class))
		return false;

	/*
	 * If either of the queues has already been detected as seeky,
	 * then merging it with the other queue is unlikely to lead to
	 * sequential I/O.
	 */
	if (FUNC0(bfqq) || FUNC0(new_bfqq))
		return false;

	/*
	 * Interleaved I/O is known to be done by (some) applications
	 * only for reads, so it does not make sense to merge async
	 * queues.
	 */
	if (!FUNC1(bfqq) || !FUNC1(new_bfqq))
		return false;

	return true;
}