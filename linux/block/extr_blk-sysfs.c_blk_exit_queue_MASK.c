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
struct request_queue {int /*<<< orphan*/  backing_dev_info; int /*<<< orphan*/ * elevator; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 

__attribute__((used)) static void FUNC4(struct request_queue *q)
{
	/*
	 * Since the I/O scheduler exit code may access cgroup information,
	 * perform I/O scheduler exit before disassociating from the block
	 * cgroup controller.
	 */
	if (q->elevator) {
		FUNC3(q);
		FUNC0(q, q->elevator);
		q->elevator = NULL;
	}

	/*
	 * Remove all references to @q from the block cgroup controller before
	 * restoring @q->queue_lock to avoid that restoring this pointer causes
	 * e.g. blkcg_print_blkgs() to crash.
	 */
	FUNC2(q);

	/*
	 * Since the cgroup code may dereference the @q->backing_dev_info
	 * pointer, only decrease its reference count after having removed the
	 * association with the block cgroup controller.
	 */
	FUNC1(q->backing_dev_info);
}