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
 int /*<<< orphan*/  _remote ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,char*) ; 

void FUNC8(void)
{
	const char *name = FUNC5(_remote);
	git_remote *mod;

	FUNC2(FUNC7(_repo, name, "git://github.com/libgit2/notlibgit2"));
	FUNC2(FUNC4(&mod, _repo, name));
	FUNC1(FUNC6(mod), "git://github.com/libgit2/notlibgit2");
	FUNC3(mod);

	FUNC2(FUNC7(_repo, name, NULL));
	FUNC2(FUNC4(&mod, _repo, name));
	FUNC0(FUNC6(mod) == NULL);
	FUNC3(mod);
}