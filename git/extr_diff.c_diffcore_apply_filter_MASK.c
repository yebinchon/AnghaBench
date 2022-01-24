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
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_options {int /*<<< orphan*/  filter; } ;
struct diff_filepair {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_queue_struct*) ; 
 int /*<<< orphan*/  DIFF_STATUS_FILTER_AON ; 
 int /*<<< orphan*/  FUNC1 (struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC2 (struct diff_queue_struct*,struct diff_filepair*) ; 
 struct diff_queue_struct diff_queued_diff ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC4 (struct diff_filepair**) ; 
 scalar_t__ FUNC5 (struct diff_options*,struct diff_filepair*) ; 

__attribute__((used)) static void FUNC6(struct diff_options *options)
{
	int i;
	struct diff_queue_struct *q = &diff_queued_diff;
	struct diff_queue_struct outq;

	FUNC0(&outq);

	if (!options->filter)
		return;

	if (FUNC3(DIFF_STATUS_FILTER_AON, options)) {
		int found;
		for (i = found = 0; !found && i < q->nr; i++) {
			if (FUNC5(options, q->queue[i]))
				found++;
		}
		if (found)
			return;

		/* otherwise we will clear the whole queue
		 * by copying the empty outq at the end of this
		 * function, but first clear the current entries
		 * in the queue.
		 */
		for (i = 0; i < q->nr; i++)
			FUNC1(q->queue[i]);
	}
	else {
		/* Only the matching ones */
		for (i = 0; i < q->nr; i++) {
			struct diff_filepair *p = q->queue[i];
			if (FUNC5(options, p))
				FUNC2(&outq, p);
			else
				FUNC1(p);
		}
	}
	FUNC4(q->queue);
	*q = outq;
}