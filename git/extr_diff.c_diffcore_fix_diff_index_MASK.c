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
struct diff_queue_struct {int /*<<< orphan*/  nr; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct diff_queue_struct diff_queued_diff ; 
 int /*<<< orphan*/  diffnamecmp ; 

void FUNC1(void)
{
	struct diff_queue_struct *q = &diff_queued_diff;
	FUNC0(q->queue, q->nr, diffnamecmp);
}