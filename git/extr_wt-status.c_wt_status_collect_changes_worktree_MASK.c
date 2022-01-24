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
struct wt_status {scalar_t__ detect_rename; scalar_t__ rename_limit; scalar_t__ rename_score; int /*<<< orphan*/  pathspec; int /*<<< orphan*/  ignore_submodule_arg; int /*<<< orphan*/  show_untracked_files; int /*<<< orphan*/  repo; } ;
struct TYPE_3__ {int dirty_submodules; int ignore_untracked_in_submodules; int override_submodule_config; } ;
struct TYPE_4__ {int ita_invisible_in_index; scalar_t__ detect_rename; scalar_t__ rename_limit; scalar_t__ rename_score; struct wt_status* format_callback_data; int /*<<< orphan*/  format_callback; TYPE_1__ flags; int /*<<< orphan*/  output_format; } ;
struct rev_info {int /*<<< orphan*/  prune_data; TYPE_2__ diffopt; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_FORMAT_CALLBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wt_status_collect_changed_cb ; 

__attribute__((used)) static void FUNC5(struct wt_status *s)
{
	struct rev_info rev;

	FUNC2(s->repo, &rev, NULL);
	FUNC4(0, NULL, &rev, NULL);
	rev.diffopt.output_format |= DIFF_FORMAT_CALLBACK;
	rev.diffopt.flags.dirty_submodules = 1;
	rev.diffopt.ita_invisible_in_index = 1;
	if (!s->show_untracked_files)
		rev.diffopt.flags.ignore_untracked_in_submodules = 1;
	if (s->ignore_submodule_arg) {
		rev.diffopt.flags.override_submodule_config = 1;
		FUNC1(&rev.diffopt, s->ignore_submodule_arg);
	}
	rev.diffopt.format_callback = wt_status_collect_changed_cb;
	rev.diffopt.format_callback_data = s;
	rev.diffopt.detect_rename = s->detect_rename >= 0 ? s->detect_rename : rev.diffopt.detect_rename;
	rev.diffopt.rename_limit = s->rename_limit >= 0 ? s->rename_limit : rev.diffopt.rename_limit;
	rev.diffopt.rename_score = s->rename_score >= 0 ? s->rename_score : rev.diffopt.rename_score;
	FUNC0(&rev.prune_data, &s->pathspec);
	FUNC3(&rev, 0);
}