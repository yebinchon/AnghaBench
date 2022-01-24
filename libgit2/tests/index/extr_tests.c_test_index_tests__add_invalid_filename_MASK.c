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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

void FUNC8(void)
{
	git_repository *repo;

	FUNC7("invalid", 0700);

	FUNC2(FUNC6(&repo, "./invalid", 0));
	FUNC3(FUNC7("./invalid/subdir", 0777));

	/* cl_git_mkfile() needs the dir to exist */
	if (!FUNC4("./invalid/.GIT"))
		FUNC3(FUNC7("./invalid/.GIT", 0777));
	if (!FUNC4("./invalid/.GiT"))
		FUNC3(FUNC7("./invalid/.GiT", 0777));

	FUNC0(repo, ".git/hello");
	FUNC0(repo, ".GIT/hello");
	FUNC0(repo, ".GiT/hello");
	FUNC0(repo, "./.git/hello");
	FUNC0(repo, "./foo");
	FUNC0(repo, "./bar");
	FUNC0(repo, "subdir/../bar");

	FUNC5(repo);

	FUNC1("invalid");
}