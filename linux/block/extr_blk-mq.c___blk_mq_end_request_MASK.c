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
typedef  int /*<<< orphan*/  u64 ;
struct request {int rq_flags; int internal_tag; int /*<<< orphan*/  (* end_io ) (struct request*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  q; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int RQF_STATS ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct request*,int /*<<< orphan*/ ) ; 

inline void FUNC9(struct request *rq, blk_status_t error)
{
	u64 now = 0;

	if (FUNC2(rq))
		now = FUNC6();

	if (rq->rq_flags & RQF_STATS) {
		FUNC3(rq->q);
		FUNC5(rq, now);
	}

	if (rq->internal_tag != -1)
		FUNC4(rq, now);

	FUNC0(rq, now);

	if (rq->end_io) {
		FUNC7(rq->q, rq);
		rq->end_io(rq, error);
	} else {
		FUNC1(rq);
	}
}