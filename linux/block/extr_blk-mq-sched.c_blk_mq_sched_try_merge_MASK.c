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
struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
#define  ELEVATOR_BACK_MERGE 130 
#define  ELEVATOR_DISCARD_MERGE 129 
#define  ELEVATOR_FRONT_MERGE 128 
 struct request* FUNC0 (struct request_queue*,struct request*) ; 
 struct request* FUNC1 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,struct bio*,unsigned int) ; 
 int FUNC3 (struct request_queue*,struct request*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*,struct bio*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,struct request*,struct bio*) ; 
 int FUNC6 (struct request_queue*,struct request**,struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*,struct request*,int const) ; 

bool FUNC8(struct request_queue *q, struct bio *bio,
		unsigned int nr_segs, struct request **merged_request)
{
	struct request *rq;

	switch (FUNC6(q, &rq, bio)) {
	case ELEVATOR_BACK_MERGE:
		if (!FUNC5(q, rq, bio))
			return false;
		if (!FUNC2(rq, bio, nr_segs))
			return false;
		*merged_request = FUNC0(q, rq);
		if (!*merged_request)
			FUNC7(q, rq, ELEVATOR_BACK_MERGE);
		return true;
	case ELEVATOR_FRONT_MERGE:
		if (!FUNC5(q, rq, bio))
			return false;
		if (!FUNC4(rq, bio, nr_segs))
			return false;
		*merged_request = FUNC1(q, rq);
		if (!*merged_request)
			FUNC7(q, rq, ELEVATOR_FRONT_MERGE);
		return true;
	case ELEVATOR_DISCARD_MERGE:
		return FUNC3(q, rq, bio);
	default:
		return false;
	}
}