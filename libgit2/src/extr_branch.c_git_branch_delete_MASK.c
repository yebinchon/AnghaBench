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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 int /*<<< orphan*/  GIT_REFS_HEADS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(git_reference *branch)
{
	int is_head;
	git_buf config_section = GIT_BUF_INIT;
	int error = -1;

	FUNC0(branch);

	if (!FUNC9(branch) && !FUNC10(branch)) {
		FUNC7(GIT_ERROR_INVALID, "reference '%s' is not a valid branch.",
			FUNC11(branch));
		return GIT_ENOTFOUND;
	}

	if ((is_head = FUNC2(branch)) < 0)
		return is_head;

	if (is_head) {
		FUNC7(GIT_ERROR_REFERENCE, "cannot delete branch '%s' as it is "
			"the current HEAD of the repository.", FUNC11(branch));
		return -1;
	}

	if (FUNC9(branch) && FUNC1(branch)) {
		FUNC7(GIT_ERROR_REFERENCE, "Cannot delete branch '%s' as it is "
			"the current HEAD of a linked repository.", FUNC11(branch));
		return -1;
	}

	if (FUNC5(&config_section, '.', "branch",
			FUNC11(branch) + FUNC13(GIT_REFS_HEADS_DIR)) < 0)
		goto on_error;

	if (FUNC6(
		FUNC12(branch), FUNC3(&config_section), NULL) < 0)
		goto on_error;

	error = FUNC8(branch);

on_error:
	FUNC4(&config_section);
	return error;
}