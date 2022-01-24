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
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  summary; int /*<<< orphan*/  author; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_diff_format_email_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  repo ; 

__attribute__((used)) static void FUNC15(
	const char *expected,
	const char *oidstr,
	git_diff_format_email_options *opts)
{
	git_oid oid;
	git_commit *commit = NULL;
	git_diff *diff = NULL;
	git_buf buf = GIT_BUF_INIT;

	FUNC14(&oid, oidstr);

	FUNC1(FUNC8(&commit, repo, &oid));

	opts->id = FUNC7(commit);
	opts->author = FUNC5(commit);
	if (!opts->summary)
		opts->summary = FUNC9(commit);

	FUNC1(FUNC10(&diff, repo, commit, NULL));
	FUNC1(FUNC12(&buf, diff, opts));

	FUNC0(expected, FUNC3(&buf));
	FUNC2(&buf);

	FUNC1(FUNC11(
		&buf, repo, commit, 1, 1, opts->flags, NULL));
	FUNC0(expected, FUNC3(&buf));

	FUNC13(diff);
	FUNC6(commit);
	FUNC4(&buf);
}