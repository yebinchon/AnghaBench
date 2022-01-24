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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2(void)
{
	FUNC0(repo, "core.protectNTFS", true);

	FUNC1("refs/heads/dotgit_backslash_path", ".git/foobar");
	FUNC1("refs/heads/dotcapitalgit_backslash_path", ".GIT/foobar");
	FUNC1("refs/heads/dot_git_dot", ".git/foobar");
	FUNC1("refs/heads/git_tilde1", ".git/foobar");
}