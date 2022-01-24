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
typedef  int /*<<< orphan*/  git_vector ;
typedef  int /*<<< orphan*/  git_remote_head ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_refspec ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 scalar_t__ GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(git_remote_head **out, git_remote *remote, git_refspec *spec, git_vector *update_heads, git_reference *ref)
{
	git_reference *resolved_ref = NULL;
	git_buf remote_name = GIT_BUF_INIT;
	git_config *config = NULL;
	const char *ref_name;
	int error = 0, update;

	FUNC0(out && spec && ref);

	*out = NULL;

	error = FUNC6(&resolved_ref, ref);

	/* If we're in an unborn branch, let's pretend nothing happened */
	if (error == GIT_ENOTFOUND && FUNC8(ref) == GIT_REFERENCE_SYMBOLIC) {
		ref_name = FUNC7(ref);
		error = 0;
	} else {
		ref_name = FUNC5(resolved_ref);
	}

	if ((error = FUNC9(&update, &remote_name, remote, spec, ref_name)) < 0)
		goto cleanup;

	if (update)
		error = FUNC10(out, update_heads, FUNC1(&remote_name));

cleanup:
	FUNC2(&remote_name);
	FUNC4(resolved_ref);
	FUNC3(config);
	return error;
}