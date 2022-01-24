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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_diff_options ;
struct TYPE_4__ {size_t patch_no; size_t total_patches; int /*<<< orphan*/  author; int /*<<< orphan*/  body; int /*<<< orphan*/  summary; int /*<<< orphan*/  id; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_diff_format_email_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_DIFF_FORMAT_EMAIL_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(
	git_buf *out,
	git_repository *repo,
	git_commit *commit,
	size_t patch_no,
	size_t total_patches,
	uint32_t flags,
	const git_diff_options *diff_opts)
{
	git_diff *diff = NULL;
	git_diff_format_email_options opts =
		GIT_DIFF_FORMAT_EMAIL_OPTIONS_INIT;
	int error;

	FUNC0 (out && repo && commit);

	opts.flags = flags;
	opts.patch_no = patch_no;
	opts.total_patches = total_patches;
	opts.id = FUNC3(commit);
	opts.summary = FUNC4(commit);
	opts.body = FUNC2(commit);
	opts.author = FUNC1(commit);

	if ((error = FUNC5(&diff, repo, commit, diff_opts)) < 0)
		return error;

	error = FUNC6(out, diff, &opts);

	FUNC7(diff);
	return error;
}