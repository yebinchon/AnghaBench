#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct floppy_state {size_t index; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 TYPE_1__** disks ; 
 int /*<<< orphan*/  idle ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  swim3_lock ; 

__attribute__((used)) static void FUNC7(struct floppy_state *fs)
{
	struct request_queue *q = disks[fs->index]->queue;
	unsigned long flags;

	FUNC6("%s", "-> release drive\n");

	FUNC4(&swim3_lock, flags);
	fs->state = idle;
	FUNC5(&swim3_lock, flags);

	FUNC0(q);
	FUNC1(q);
	FUNC3(q);
	FUNC2(q);
}