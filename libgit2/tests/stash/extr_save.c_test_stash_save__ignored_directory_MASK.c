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
 int GIT_STASH_INCLUDE_IGNORED ; 
 int GIT_STASH_INCLUDE_UNTRACKED ; 
 int /*<<< orphan*/  GIT_STATUS_IGNORED ; 
 int /*<<< orphan*/  GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 
 int /*<<< orphan*/  stash_tip_oid ; 

void FUNC8(void)
{
	FUNC3(FUNC7("stash/ignored_directory", 0777));
	FUNC3(FUNC7("stash/ignored_directory/sub", 0777));
	FUNC2("stash/ignored_directory/sub/some_file", "stuff");

	FUNC0(repo, "ignored_directory/sub/some_file", GIT_STATUS_WT_NEW);
	FUNC3(FUNC4(repo, "ignored_directory/"));
	FUNC0(repo, "ignored_directory/sub/some_file", GIT_STATUS_IGNORED);

	FUNC3(FUNC6(&stash_tip_oid, repo, signature, NULL, GIT_STASH_INCLUDE_UNTRACKED | GIT_STASH_INCLUDE_IGNORED));

	FUNC1(!FUNC5("stash/ignored_directory/sub/some_file"));
	FUNC1(!FUNC5("stash/ignored_directory/sub"));
	FUNC1(!FUNC5("stash/ignored_directory"));
}