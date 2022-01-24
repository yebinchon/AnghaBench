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
struct object_id {int dummy; } ;
struct diff_queue_struct {int nr; int /*<<< orphan*/ * queue; } ;
struct diff_options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_queue_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct diff_options*,struct object_id*,int,int) ; 
 struct diff_queue_struct diff_queued_diff ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct diff_options *options, struct object_id *oid, int diff_header_only, int stable)
{
	struct diff_queue_struct *q = &diff_queued_diff;
	int i;
	int result = FUNC2(options, oid, diff_header_only, stable);

	for (i = 0; i < q->nr; i++)
		FUNC1(q->queue[i]);

	FUNC3(q->queue);
	FUNC0(q);

	return result;
}