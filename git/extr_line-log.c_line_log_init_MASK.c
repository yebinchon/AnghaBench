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
struct string_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pathspec; int /*<<< orphan*/  repo; } ;
struct rev_info {TYPE_1__ diffopt; } ;
struct line_log_data {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rev_info*,struct commit*,struct line_log_data*) ; 
 struct commit* FUNC1 (struct rev_info*) ; 
 struct line_log_data* FUNC2 (int /*<<< orphan*/ ,struct commit*,char const*,struct string_list*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct line_log_data*) ; 

void FUNC4(struct rev_info *rev, const char *prefix, struct string_list *args)
{
	struct commit *commit = NULL;
	struct line_log_data *range;

	commit = FUNC1(rev);
	range = FUNC2(rev->diffopt.repo, commit, prefix, args);
	FUNC0(rev, commit, range);

	FUNC3(&rev->diffopt.pathspec, range);
}