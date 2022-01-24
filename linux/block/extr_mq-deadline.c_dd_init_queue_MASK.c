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
struct request_queue {struct elevator_queue* elevator; int /*<<< orphan*/  node; } ;
struct elevator_type {int dummy; } ;
struct elevator_queue {struct deadline_data* elevator_data; int /*<<< orphan*/  kobj; } ;
struct deadline_data {int front_merges; int /*<<< orphan*/  dispatch; int /*<<< orphan*/  zone_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  fifo_batch; int /*<<< orphan*/  writes_starved; int /*<<< orphan*/ * fifo_expire; void** sort_list; int /*<<< orphan*/ * fifo_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* RB_ROOT ; 
 size_t READ ; 
 size_t WRITE ; 
 struct elevator_queue* FUNC1 (struct request_queue*,struct elevator_type*) ; 
 int /*<<< orphan*/  fifo_batch ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct deadline_data* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_expire ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_expire ; 
 int /*<<< orphan*/  writes_starved ; 

__attribute__((used)) static int FUNC5(struct request_queue *q, struct elevator_type *e)
{
	struct deadline_data *dd;
	struct elevator_queue *eq;

	eq = FUNC1(q, e);
	if (!eq)
		return -ENOMEM;

	dd = FUNC3(sizeof(*dd), GFP_KERNEL, q->node);
	if (!dd) {
		FUNC2(&eq->kobj);
		return -ENOMEM;
	}
	eq->elevator_data = dd;

	FUNC0(&dd->fifo_list[READ]);
	FUNC0(&dd->fifo_list[WRITE]);
	dd->sort_list[READ] = RB_ROOT;
	dd->sort_list[WRITE] = RB_ROOT;
	dd->fifo_expire[READ] = read_expire;
	dd->fifo_expire[WRITE] = write_expire;
	dd->writes_starved = writes_starved;
	dd->front_merges = 1;
	dd->fifo_batch = fifo_batch;
	FUNC4(&dd->lock);
	FUNC4(&dd->zone_lock);
	FUNC0(&dd->dispatch);

	q->elevator = eq;
	return 0;
}