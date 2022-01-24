#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_mtime; } ;
struct p_timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int GIT_DIFF_UPDATE_INDEX ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC20 (char*,struct p_timeval*) ; 
 int /*<<< orphan*/  touch_file ; 

void FUNC21(void)
{
	git_index *index;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	git_reference *head;
	git_object *head_object;
	git_oid initial, first, second;
	git_buf path = GIT_BUF_INIT;
	struct stat st;
	struct p_timeval times[2];

	opts.flags |= GIT_DIFF_INCLUDE_UNTRACKED | GIT_DIFF_UPDATE_INDEX;

	g_repo = FUNC2("status");

	FUNC1(FUNC17(&index, g_repo));
	FUNC1(FUNC16(&head, g_repo));
	FUNC1(FUNC15(&head_object, head, GIT_OBJECT_COMMIT));

	FUNC1(FUNC18(g_repo, head_object, GIT_RESET_HARD, NULL));

	FUNC11(&initial, FUNC8(index));

	/* update the index timestamp to avoid raciness */
	FUNC3(FUNC19("status/.git/index", &st));

	times[0].tv_sec = st.st_mtime + 5;
	times[0].tv_usec = 0;
	times[1].tv_sec = st.st_mtime + 5;
	times[1].tv_usec = 0;

	FUNC3(FUNC20("status/.git/index", times));

	/* ensure diff doesn't touch the index */
	FUNC1(FUNC7(&diff, g_repo, NULL, &opts));
	FUNC6(diff);

	FUNC11(&first, FUNC8(index));
	FUNC0(!FUNC12(&initial, &first));

	/* touch all the files so stat times are different */
	FUNC1(FUNC5(&path, "status"));
	FUNC1(FUNC13(&path, 0, touch_file, NULL));

	FUNC1(FUNC7(&diff, g_repo, NULL, &opts));
	FUNC6(diff);

	/* ensure the second diff did update the index */
	FUNC11(&second, FUNC8(index));
	FUNC0(!FUNC12(&first, &second));

	FUNC4(&path);
	FUNC10(head_object);
	FUNC14(head);
	FUNC9(index);
}