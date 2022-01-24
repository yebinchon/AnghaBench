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
typedef  int /*<<< orphan*/  git_revwalk ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int GIT_ERROR_INVALID ; 
 scalar_t__ GIT_REFERENCE_DIRECT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(git_reference *reference, void *payload)
{
	git_revwalk *walk = (git_revwalk *)payload;
	int error;

	if (FUNC3(reference) != GIT_REFERENCE_DIRECT) {
		FUNC1(reference);
		return 0;
	}

	error = FUNC4(walk, FUNC2(reference));
	/* The reference is in the local repository, so the target may not
	 * exist on the remote.  It also may not be a commit. */
	if (error == GIT_ENOTFOUND || error == GIT_ERROR_INVALID) {
		FUNC0();
		error = 0;
	}

	FUNC1(reference);

	return error;
}