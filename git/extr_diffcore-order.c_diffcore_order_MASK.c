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
struct obj_order {int /*<<< orphan*/  obj; } ;
struct diff_queue_struct {int nr; int /*<<< orphan*/ * queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obj_order*,int) ; 
 struct diff_queue_struct diff_queued_diff ; 
 int /*<<< orphan*/  FUNC1 (struct obj_order*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,struct obj_order*,int) ; 
 int /*<<< orphan*/  pair_pathtwo ; 

void FUNC3(const char *orderfile)
{
	struct diff_queue_struct *q = &diff_queued_diff;
	struct obj_order *o;
	int i;

	if (!q->nr)
		return;

	FUNC0(o, q->nr);
	for (i = 0; i < q->nr; i++)
		o[i].obj = q->queue[i];
	FUNC2(orderfile, pair_pathtwo, o, q->nr);
	for (i = 0; i < q->nr; i++)
		q->queue[i] = o[i].obj;
	FUNC1(o);
	return;
}