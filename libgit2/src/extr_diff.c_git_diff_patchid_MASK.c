#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct patch_id_args {int first_file; int /*<<< orphan*/  ctx; int /*<<< orphan*/  result; } ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_diff_patchid_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_PATCHID_OPTIONS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  file_cb ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct patch_id_args*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct patch_id_args*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  patchid_line_cb ; 

int FUNC7(git_oid *out, git_diff *diff, git_diff_patchid_options *opts)
{
	struct patch_id_args args;
	int error;

	FUNC0(
		opts, GIT_DIFF_PATCHID_OPTIONS_VERSION, "git_diff_patchid_options");

	FUNC6(&args, 0, sizeof(args));
	args.first_file = 1;
	if ((error = FUNC4(&args.ctx)) < 0)
		goto out;

	if ((error = FUNC2(diff, file_cb, NULL, NULL, patchid_line_cb, &args)) < 0)
		goto out;

	if ((error = (FUNC1(&args.result, &args.ctx))) < 0)
		goto out;

	FUNC5(out, &args.result);

out:
	FUNC3(&args.ctx);
	return error;
}