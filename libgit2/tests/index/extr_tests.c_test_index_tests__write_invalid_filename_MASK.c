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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

void FUNC6(void)
{
	git_repository *repo;

	FUNC4("invalid", 0700);

	FUNC1(FUNC3(&repo, "./invalid", 0));

	FUNC5(repo, ".git/hello");
	FUNC5(repo, ".GIT/hello");
	FUNC5(repo, ".GiT/hello");
	FUNC5(repo, "./.git/hello");
	FUNC5(repo, "./foo");
	FUNC5(repo, "./bar");
	FUNC5(repo, "foo/../bar");

	FUNC2(repo);

	FUNC0("invalid");
}