#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct line_log_data {int /*<<< orphan*/  path; struct line_log_data* next; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_filepair {TYPE_1__* two; } ;
struct TYPE_2__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_queue_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_queue_struct*,struct diff_filepair*) ; 
 struct diff_queue_struct diff_queued_diff ; 
 int /*<<< orphan*/  FUNC4 (struct diff_filepair**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct line_log_data *range, int keep_deletions)
{
	int i;
	struct diff_queue_struct outq;
	FUNC1(&outq);

	for (i = 0; i < diff_queued_diff.nr; i++) {
		struct diff_filepair *p = diff_queued_diff.queue[i];
		struct line_log_data *rg = NULL;

		if (!FUNC0(p->two)) {
			if (keep_deletions)
				FUNC3(&outq, p);
			else
				FUNC2(p);
			continue;
		}
		for (rg = range; rg; rg = rg->next) {
			if (!FUNC5(rg->path, p->two->path))
				break;
		}
		if (rg)
			FUNC3(&outq, p);
		else
			FUNC2(p);
	}
	FUNC4(diff_queued_diff.queue);
	diff_queued_diff = outq;
}