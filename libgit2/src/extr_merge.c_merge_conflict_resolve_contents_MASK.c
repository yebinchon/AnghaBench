#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_24__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_27__ {int /*<<< orphan*/  default_driver; } ;
typedef  TYPE_2__ git_merge_options ;
struct TYPE_28__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ git_merge_file_result ;
struct TYPE_29__ {scalar_t__ favor; } ;
typedef  TYPE_4__ git_merge_file_options ;
struct TYPE_30__ {int /*<<< orphan*/ * theirs; int /*<<< orphan*/ * ours; int /*<<< orphan*/ * ancestor; TYPE_4__ const* file_opts; int /*<<< orphan*/  default_driver; int /*<<< orphan*/  repo; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ git_merge_driver_source ;
struct TYPE_32__ {int /*<<< orphan*/  apply; } ;
struct TYPE_25__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_31__ {scalar_t__ favor; TYPE_7__ base; TYPE_1__ member_0; } ;
typedef  TYPE_6__ git_merge_driver__builtin ;
typedef  TYPE_7__ git_merge_driver ;
struct TYPE_33__ {int /*<<< orphan*/  resolved; int /*<<< orphan*/  staged; int /*<<< orphan*/  repo; } ;
typedef  TYPE_8__ git_merge_diff_list ;
struct TYPE_34__ {int /*<<< orphan*/  their_entry; int /*<<< orphan*/  our_entry; int /*<<< orphan*/  ancestor_entry; } ;
typedef  TYPE_9__ git_merge_diff ;
typedef  TYPE_9__ git_index_entry ;
struct TYPE_26__ {TYPE_7__ base; } ;

/* Variables and functions */
 int GIT_EMERGECONFLICT ; 
 scalar_t__ GIT_MERGE_FILE_FAVOR_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int GIT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  git_merge_driver__builtin_apply ; 
 TYPE_24__ git_merge_driver__text ; 
 int FUNC2 (char const**,TYPE_7__**,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__ const*) ; 
 int FUNC7 (TYPE_9__**,char const*,TYPE_7__*,TYPE_8__*,TYPE_5__*) ; 

__attribute__((used)) static int FUNC8(
	int *resolved,
	git_merge_diff_list *diff_list,
	const git_merge_diff *conflict,
	const git_merge_options *merge_opts,
	const git_merge_file_options *file_opts)
{
	git_merge_driver_source source = {0};
	git_merge_file_result result = {0};
	git_merge_driver *driver;
	git_merge_driver__builtin builtin = {0};
	git_index_entry *merge_result;
	git_odb *odb = NULL;
	const char *name;
	bool fallback = false;
	int error;

	FUNC1(resolved && diff_list && conflict);

	*resolved = 0;

	if (!FUNC6(conflict))
		return 0;

	source.repo = diff_list->repo;
	source.default_driver = merge_opts->default_driver;
	source.file_opts = file_opts;
	source.ancestor = FUNC0(conflict->ancestor_entry) ?
		&conflict->ancestor_entry : NULL;
	source.ours = FUNC0(conflict->our_entry) ?
		&conflict->our_entry : NULL;
	source.theirs = FUNC0(conflict->their_entry) ?
		&conflict->their_entry : NULL;

	if (file_opts->favor != GIT_MERGE_FILE_FAVOR_NORMAL) {
		/* if the user requested a particular type of resolution (via the
		 * favor flag) then let that override the gitattributes and use
		 * the builtin driver.
		 */
		name = "text";
		builtin.base.apply = git_merge_driver__builtin_apply;
		builtin.favor = file_opts->favor;

		driver = &builtin.base;
	} else {
		/* find the merge driver for this file */
		if ((error = FUNC2(&name, &driver, &source)) < 0)
			goto done;

		if (driver == NULL)
			fallback = true;
	}

	if (driver) {
		error = FUNC7(&merge_result, name, driver,
			diff_list, &source);

		if (error == GIT_PASSTHROUGH)
			fallback = true;
	}

	if (fallback) {
		error = FUNC7(&merge_result, "text",
			&git_merge_driver__text.base, diff_list, &source);
	}

	if (error < 0) {
		if (error == GIT_EMERGECONFLICT)
			error = 0;

		goto done;
	}

	FUNC5(&diff_list->staged, merge_result);
	FUNC5(&diff_list->resolved, (git_merge_diff *)conflict);

	*resolved = 1;

done:
	FUNC3(&result);
	FUNC4(odb);

	return error;
}