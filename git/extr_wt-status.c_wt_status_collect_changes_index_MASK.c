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
struct wt_status {char* ignore_submodule_arg; scalar_t__ detect_rename; scalar_t__ rename_limit; scalar_t__ rename_score; int /*<<< orphan*/  pathspec; int /*<<< orphan*/  reference; scalar_t__ is_initial; int /*<<< orphan*/  repo; } ;
struct setup_revision_opt {int /*<<< orphan*/  def; } ;
struct TYPE_3__ {int override_submodule_config; } ;
struct TYPE_4__ {int ita_invisible_in_index; scalar_t__ detect_rename; scalar_t__ rename_limit; scalar_t__ rename_score; struct wt_status* format_callback_data; int /*<<< orphan*/  format_callback; int /*<<< orphan*/  output_format; TYPE_1__ flags; } ;
struct rev_info {int /*<<< orphan*/  prune_data; TYPE_2__ diffopt; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_FORMAT_CALLBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct setup_revision_opt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rev_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rev_info*,struct setup_revision_opt*) ; 
 int /*<<< orphan*/  wt_status_collect_updated_cb ; 

__attribute__((used)) static void FUNC7(struct wt_status *s)
{
	struct rev_info rev;
	struct setup_revision_opt opt;

	FUNC4(s->repo, &rev, NULL);
	FUNC3(&opt, 0, sizeof(opt));
	opt.def = s->is_initial ? FUNC1() : s->reference;
	FUNC6(0, NULL, &rev, &opt);

	rev.diffopt.flags.override_submodule_config = 1;
	rev.diffopt.ita_invisible_in_index = 1;
	if (s->ignore_submodule_arg) {
		FUNC2(&rev.diffopt, s->ignore_submodule_arg);
	} else {
		/*
		 * Unless the user did explicitly request a submodule ignore
		 * mode by passing a command line option we do not ignore any
		 * changed submodule SHA-1s when comparing index and HEAD, no
		 * matter what is configured. Otherwise the user won't be
		 * shown any submodules she manually added (and which are
		 * staged to be committed), which would be really confusing.
		 */
		FUNC2(&rev.diffopt, "dirty");
	}

	rev.diffopt.output_format |= DIFF_FORMAT_CALLBACK;
	rev.diffopt.format_callback = wt_status_collect_updated_cb;
	rev.diffopt.format_callback_data = s;
	rev.diffopt.detect_rename = s->detect_rename >= 0 ? s->detect_rename : rev.diffopt.detect_rename;
	rev.diffopt.rename_limit = s->rename_limit >= 0 ? s->rename_limit : rev.diffopt.rename_limit;
	rev.diffopt.rename_score = s->rename_score >= 0 ? s->rename_score : rev.diffopt.rename_score;
	FUNC0(&rev.prune_data, &s->pathspec);
	FUNC5(&rev, 1);
}