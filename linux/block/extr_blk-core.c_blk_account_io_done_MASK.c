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
typedef  scalar_t__ u64 ;
struct request {int rq_flags; int /*<<< orphan*/  q; scalar_t__ start_time_ns; struct hd_struct* part; } ;
struct hd_struct {int dummy; } ;

/* Variables and functions */
 int RQF_FLUSH_SEQ ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct hd_struct*) ; 
 int /*<<< orphan*/ * ios ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/ * nsecs ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct hd_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hd_struct*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct hd_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct request*) ; 
 int /*<<< orphan*/  FUNC10 (struct request*) ; 
 int /*<<< orphan*/  time_in_queue ; 
 int /*<<< orphan*/  FUNC11 (struct hd_struct*,int /*<<< orphan*/ ) ; 

void FUNC12(struct request *req, u64 now)
{
	/*
	 * Account IO completion.  flush_rq isn't accounted as a
	 * normal IO on queueing nor completion.  Accounting the
	 * containing request is enough.
	 */
	if (FUNC0(req) && !(req->rq_flags & RQF_FLUSH_SEQ)) {
		const int sgrp = FUNC3(FUNC9(req));
		struct hd_struct *part;

		FUNC7();
		part = req->part;

		FUNC11(part, jiffies);
		FUNC6(part, ios[sgrp]);
		FUNC5(part, nsecs[sgrp], now - req->start_time_ns);
		FUNC5(part, time_in_queue, FUNC2(now - req->start_time_ns));
		FUNC4(req->q, part, FUNC10(req));

		FUNC1(part);
		FUNC8();
	}
}