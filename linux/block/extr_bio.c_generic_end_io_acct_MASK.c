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
struct hd_struct {int dummy; } ;

/* Variables and functions */
 unsigned long jiffies ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/ * nsecs ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,struct hd_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hd_struct*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  time_in_queue ; 
 int /*<<< orphan*/  FUNC7 (struct hd_struct*,unsigned long) ; 

void FUNC8(struct request_queue *q, int req_op,
			 struct hd_struct *part, unsigned long start_time)
{
	unsigned long now = jiffies;
	unsigned long duration = now - start_time;
	const int sgrp = FUNC2(req_op);

	FUNC5();

	FUNC7(part, now);
	FUNC4(part, nsecs[sgrp], FUNC0(duration));
	FUNC4(part, time_in_queue, duration);
	FUNC3(q, part, FUNC1(req_op));

	FUNC6();
}