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
struct request {scalar_t__ fifo_time; } ;
struct deadline_data {TYPE_1__* fifo_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 struct request* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static inline int FUNC2(struct deadline_data *dd, int ddir)
{
	struct request *rq = FUNC0(dd->fifo_list[ddir].next);

	/*
	 * rq is expired!
	 */
	if (FUNC1(jiffies, (unsigned long)rq->fifo_time))
		return 1;

	return 0;
}