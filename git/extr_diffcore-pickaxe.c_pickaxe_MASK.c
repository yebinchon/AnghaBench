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
struct diff_options {int pickaxe_opts; } ;
struct diff_filepair {int dummy; } ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  pickaxe_fn ;
typedef  int /*<<< orphan*/  kwset_t ;

/* Variables and functions */
 int DIFF_PICKAXE_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct diff_queue_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC2 (struct diff_queue_struct*,struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_filepair**) ; 
 scalar_t__ FUNC4 (struct diff_filepair*,struct diff_options*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct diff_queue_struct *q, struct diff_options *o,
		    regex_t *regexp, kwset_t kws, pickaxe_fn fn)
{
	int i;
	struct diff_queue_struct outq;

	FUNC0(&outq);

	if (o->pickaxe_opts & DIFF_PICKAXE_ALL) {
		/* Showing the whole changeset if needle exists */
		for (i = 0; i < q->nr; i++) {
			struct diff_filepair *p = q->queue[i];
			if (FUNC4(p, o, regexp, kws, fn))
				return; /* do not munge the queue */
		}

		/*
		 * Otherwise we will clear the whole queue by copying
		 * the empty outq at the end of this function, but
		 * first clear the current entries in the queue.
		 */
		for (i = 0; i < q->nr; i++)
			FUNC1(q->queue[i]);
	} else {
		/* Showing only the filepairs that has the needle */
		for (i = 0; i < q->nr; i++) {
			struct diff_filepair *p = q->queue[i];
			if (FUNC4(p, o, regexp, kws, fn))
				FUNC2(&outq, p);
			else
				FUNC1(p);
		}
	}

	FUNC3(q->queue);
	*q = outq;
}