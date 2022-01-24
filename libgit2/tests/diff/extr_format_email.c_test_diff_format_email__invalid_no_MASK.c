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
struct TYPE_4__ {int patch_no; int total_patches; int /*<<< orphan*/  summary; int /*<<< orphan*/  author; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_diff_format_email_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 TYPE_1__ GIT_DIFF_FORMAT_EMAIL_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  repo ; 

void FUNC13(void)
{
	git_oid oid;
	git_commit *commit = NULL;
	git_diff *diff = NULL;
	git_diff_format_email_options opts = GIT_DIFF_FORMAT_EMAIL_OPTIONS_INIT;
	git_buf buf = GIT_BUF_INIT;

	FUNC12(&oid, "9264b96c6d104d0e07ae33d3007b6a48246c6f92");

	FUNC1(FUNC6(&commit, repo, &oid));

	opts.id = FUNC5(commit);
	opts.author = FUNC3(commit);
	opts.summary = FUNC7(commit);
	opts.patch_no = 2;
	opts.total_patches = 1;

	FUNC1(FUNC8(&diff, repo, commit, NULL));
	FUNC0(FUNC10(&buf, diff, &opts));
	FUNC0(FUNC9(&buf, repo, commit, 2, 1, 0, NULL));
	FUNC0(FUNC9(&buf, repo, commit, 0, 0, 0, NULL));

	FUNC11(diff);
	FUNC4(commit);
	FUNC2(&buf);
}