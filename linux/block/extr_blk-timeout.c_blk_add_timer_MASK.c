#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long expires; } ;
struct request_queue {TYPE_1__ timeout; int /*<<< orphan*/  rq_timeout; } ;
struct request {int /*<<< orphan*/  deadline; int /*<<< orphan*/  timeout; int /*<<< orphan*/  rq_flags; struct request_queue* q; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  RQF_TIMED_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(struct request *req)
{
	struct request_queue *q = req->q;
	unsigned long expiry;

	/*
	 * Some LLDs, like scsi, peek at the timeout to prevent a
	 * command from being retried forever.
	 */
	if (!req->timeout)
		req->timeout = q->rq_timeout;

	req->rq_flags &= ~RQF_TIMED_OUT;

	expiry = jiffies + req->timeout;
	FUNC0(req->deadline, expiry);

	/*
	 * If the timer isn't already pending or this timeout is earlier
	 * than an existing one, modify the timer. Round up to next nearest
	 * second.
	 */
	expiry = FUNC1(FUNC3(expiry));

	if (!FUNC5(&q->timeout) ||
	    FUNC4(expiry, q->timeout.expires)) {
		unsigned long diff = q->timeout.expires - expiry;

		/*
		 * Due to added timer slack to group timers, the timer
		 * will often be a little in front of what we asked for.
		 * So apply some tolerance here too, otherwise we keep
		 * modifying the timer because expires for value X
		 * will be X + something.
		 */
		if (!FUNC5(&q->timeout) || (diff >= HZ / 2))
			FUNC2(&q->timeout, expiry);
	}

}