#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_filepair {TYPE_2__* two; TYPE_1__* one; scalar_t__ broken_pair; } ;
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
struct TYPE_3__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_queue_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_queue_struct*,struct diff_filepair*) ; 
 struct diff_queue_struct diff_queued_diff ; 
 int /*<<< orphan*/  FUNC2 (struct diff_filepair**) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_filepair*,struct diff_filepair*,struct diff_queue_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	struct diff_queue_struct *q = &diff_queued_diff;
	struct diff_queue_struct outq;
	int i, j;

	FUNC0(&outq);

	for (i = 0; i < q->nr; i++) {
		struct diff_filepair *p = q->queue[i];
		if (!p)
			/* we already merged this with its peer */
			continue;
		else if (p->broken_pair &&
			 !FUNC4(p->one->path, p->two->path)) {
			/* If the peer also survived rename/copy, then
			 * we merge them back together.
			 */
			for (j = i + 1; j < q->nr; j++) {
				struct diff_filepair *pp = q->queue[j];
				if (pp->broken_pair &&
				    !FUNC4(pp->one->path, pp->two->path) &&
				    !FUNC4(p->one->path, pp->two->path)) {
					/* Peer survived.  Merge them */
					FUNC3(p, pp, &outq);
					q->queue[j] = NULL;
					goto next;
				}
			}
			/* The peer did not survive, so we keep
			 * it in the output.
			 */
			FUNC1(&outq, p);
		}
		else
			FUNC1(&outq, p);
next:;
	}
	FUNC2(q->queue);
	*q = outq;

	return;
}