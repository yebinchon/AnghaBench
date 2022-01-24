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
struct elevator_queue {struct deadline_data* elevator_data; } ;
struct deadline_data {int /*<<< orphan*/ * fifo_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct deadline_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct elevator_queue *e)
{
	struct deadline_data *dd = e->elevator_data;

	FUNC0(!FUNC2(&dd->fifo_list[READ]));
	FUNC0(!FUNC2(&dd->fifo_list[WRITE]));

	FUNC1(dd);
}