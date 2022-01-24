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
typedef  int /*<<< orphan*/  git_remote ;

/* Variables and functions */
 char* TEST_URL ; 
 int /*<<< orphan*/  _config ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	git_remote *remote;
	FUNC1(FUNC2(_config, "remote.origin.fetch", "+refs/heads/*:refs/remotes/origin/*"));
	FUNC1(FUNC2(_config, "remote.origin.url", TEST_URL));

	FUNC1(FUNC4(&remote, _repo, "origin"));
	FUNC0(FUNC5(remote), "origin");
	FUNC0(FUNC6(remote), TEST_URL);

	FUNC3(remote);
}