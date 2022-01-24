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
struct rev_info {int /*<<< orphan*/  diffopt; } ;
struct line_log_data {int dummy; } ;
struct diff_queue_struct {int dummy; } ;
struct commit {TYPE_1__* parents; } ;
struct TYPE_2__ {struct commit* item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rev_info*,struct commit*,struct line_log_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct line_log_data*) ; 
 int FUNC2 (struct line_log_data**,struct rev_info*,struct diff_queue_struct*,struct line_log_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct line_log_data*,int /*<<< orphan*/ *,struct diff_queue_struct*,struct commit*,struct commit*) ; 

__attribute__((used)) static int FUNC4(struct rev_info *rev, struct commit *commit,
					  struct line_log_data *range)
{
	struct commit *parent = NULL;
	struct diff_queue_struct queue;
	struct line_log_data *parent_range;
	int changed;

	if (commit->parents)
		parent = commit->parents->item;

	FUNC3(range, &rev->diffopt, &queue, commit, parent);
	changed = FUNC2(&parent_range, rev, &queue, range);
	if (parent)
		FUNC0(rev, parent, parent_range);
	FUNC1(parent_range);
	return changed;
}