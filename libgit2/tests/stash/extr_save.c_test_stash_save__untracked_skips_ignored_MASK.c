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

/* Variables and functions */
 int /*<<< orphan*/  GIT_STASH_INCLUDE_UNTRACKED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 
 int /*<<< orphan*/  stash_tip_oid ; 

void FUNC8(void)
{
	FUNC1("stash/.gitignore", "bundle/vendor/\n");
	FUNC4(FUNC7("stash/bundle", 0777));
	FUNC4(FUNC7("stash/bundle/vendor", 0777));
	FUNC2("stash/bundle/vendor/blah", "contents\n");

	FUNC0(FUNC5("stash/when")); /* untracked */
	FUNC0(FUNC5("stash/just.ignore")); /* ignored */
	FUNC0(FUNC5("stash/bundle/vendor/blah")); /* ignored */

	FUNC3(FUNC6(
		&stash_tip_oid, repo, signature, NULL, GIT_STASH_INCLUDE_UNTRACKED));

	FUNC0(!FUNC5("stash/when"));
	FUNC0(FUNC5("stash/bundle/vendor/blah"));
	FUNC0(FUNC5("stash/just.ignore"));
}