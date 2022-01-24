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
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/ * _cl_repo ; 
 char const* _cl_sandbox ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

git_repository *FUNC8(const char *sandbox)
{
	/* Get the name of the sandbox folder which will be created */
	const char *basename = FUNC0(sandbox);

	/* Copy the whole sandbox folder from our fixtures to our test sandbox
	 * area.  After this it can be accessed with `./sandbox`
	 */
	FUNC1(sandbox);
	_cl_sandbox = sandbox;

	FUNC2(FUNC7(basename));

	/* If this is not a bare repo, then rename `sandbox/.gitted` to
	 * `sandbox/.git` which must be done since we cannot store a folder
	 * named `.git` inside the fixtures folder of our libgit2 repo.
	 */
	if (FUNC6(".gitted", F_OK) == 0)
		FUNC2(FUNC3(".gitted", ".git"));

	/* If we have `gitattributes`, rename to `.gitattributes`.  This may
	 * be necessary if we don't want the attributes to be applied in the
	 * libgit2 repo, but just during testing.
	 */
	if (FUNC6("gitattributes", F_OK) == 0)
		FUNC2(FUNC3("gitattributes", ".gitattributes"));

	/* As with `gitattributes`, we may need `gitignore` just for testing. */
	if (FUNC6("gitignore", F_OK) == 0)
		FUNC2(FUNC3("gitignore", ".gitignore"));

	FUNC2(FUNC7(".."));

	/* Now open the sandbox repository and make it available for tests */
	FUNC2(FUNC4(&_cl_repo, basename));

	/* Adjust configs after copying to new filesystem */
	FUNC2(FUNC5(_cl_repo, 0));

	return _cl_repo;
}