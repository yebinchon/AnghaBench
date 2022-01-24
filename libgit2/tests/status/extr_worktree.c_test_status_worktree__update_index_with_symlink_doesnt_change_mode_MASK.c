#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int expected_entry_count; char const** expected_paths; unsigned int const* expected_statuses; int /*<<< orphan*/  entry_count; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ status_entry_counts ;
struct TYPE_11__ {int flags; int /*<<< orphan*/  show; } ;
typedef  TYPE_2__ git_status_options ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_12__ {int /*<<< orphan*/  mode; } ;
typedef  TYPE_3__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 TYPE_2__ GIT_STATUS_OPTIONS_INIT ; 
 int GIT_STATUS_OPT_DEFAULTS ; 
 int GIT_STATUS_OPT_UPDATE_INDEX ; 
 int /*<<< orphan*/  GIT_STATUS_SHOW_INDEX_AND_WORKDIR ; 
 unsigned int const GIT_STATUS_WT_NEW ; 
 TYPE_3__ const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cb_status__normal ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC16(void)
{
	git_repository *repo = FUNC5("testrepo");
	git_reference *head;
	git_object *head_object;
	git_index *index;
	const git_index_entry *idx_entry;
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	status_entry_counts counts = {0};
	const char *expected_paths[] = { "README" };
	const unsigned int expected_statuses[] = {GIT_STATUS_WT_NEW};

	opts.show = GIT_STATUS_SHOW_INDEX_AND_WORKDIR;
	opts.flags = GIT_STATUS_OPT_DEFAULTS | GIT_STATUS_OPT_UPDATE_INDEX;

	FUNC3(FUNC12(&head, repo));
	FUNC3(FUNC11(&head_object, head, GIT_OBJECT_COMMIT));

	FUNC3(FUNC14(repo, head_object, GIT_RESET_HARD, NULL));

	FUNC4("testrepo/README", "This was rewritten.");

	/* this status rewrites the index because we have changed the
	 * contents of a tracked file
	 */
	counts.expected_entry_count = 1;
	counts.expected_paths = expected_paths;
	counts.expected_statuses = expected_statuses;

	FUNC3(
		FUNC15(repo, &opts, cb_status__normal, &counts));
	FUNC2(1, counts.entry_count);

	/* now ensure that the status's rewrite of the index did not screw
	 * up the mode of the symlink `link_to_new.txt`, particularly
	 * on platforms that don't support symlinks
	 */
	FUNC3(FUNC13(&index, repo));
	FUNC3(FUNC8(index, true));

	FUNC1(idx_entry = FUNC7(index, "link_to_new.txt", 0));
	FUNC1(FUNC0(idx_entry->mode));

	FUNC6(index);
	FUNC9(head_object);
	FUNC10(head);
}