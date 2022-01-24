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
struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct deadline_data {int /*<<< orphan*/ * sort_list; int /*<<< orphan*/  front_merges; } ;
struct bio {int dummy; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ELEVATOR_FRONT_MERGE ; 
 int ELEVATOR_NO_MERGE ; 
 size_t FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*,struct bio*) ; 
 struct request* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct request_queue *q, struct request **rq,
			    struct bio *bio)
{
	struct deadline_data *dd = q->elevator->elevator_data;
	sector_t sector = FUNC2(bio);
	struct request *__rq;

	if (!dd->front_merges)
		return ELEVATOR_NO_MERGE;

	__rq = FUNC5(&dd->sort_list[FUNC1(bio)], sector);
	if (__rq) {
		FUNC0(sector != FUNC3(__rq));

		if (FUNC4(__rq, bio)) {
			*rq = __rq;
			return ELEVATOR_FRONT_MERGE;
		}
	}

	return ELEVATOR_NO_MERGE;
}