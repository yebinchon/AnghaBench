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
struct string_list {int dummy; } ;
struct TYPE_4__ {struct collect_changed_submodules_cb_data* format_callback_data; int /*<<< orphan*/  format_callback; int /*<<< orphan*/  output_format; } ;
struct rev_info {TYPE_2__ diffopt; } ;
struct repository {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
struct collect_changed_submodules_cb_data {int /*<<< orphan*/ * commit_oid; struct string_list* changed; struct repository* repo; } ;
struct argv_array {int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_FORMAT_CALLBACK ; 
 int /*<<< orphan*/  collect_changed_submodules_cb ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit const*,int,struct rev_info*) ; 
 struct commit* FUNC2 (struct rev_info*) ; 
 scalar_t__ FUNC3 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct repository *r,
				       struct string_list *changed,
				       struct argv_array *argv)
{
	struct rev_info rev;
	const struct commit *commit;

	FUNC4(r, &rev, NULL);
	FUNC6(argv->argc, argv->argv, &rev, NULL);
	if (FUNC3(&rev))
		FUNC0("revision walk setup failed");

	while ((commit = FUNC2(&rev))) {
		struct rev_info diff_rev;
		struct collect_changed_submodules_cb_data data;
		data.repo = r;
		data.changed = changed;
		data.commit_oid = &commit->object.oid;

		FUNC4(r, &diff_rev, NULL);
		diff_rev.diffopt.output_format |= DIFF_FORMAT_CALLBACK;
		diff_rev.diffopt.format_callback = collect_changed_submodules_cb;
		diff_rev.diffopt.format_callback_data = &data;
		FUNC1(commit, 1, &diff_rev);
	}

	FUNC5();
}