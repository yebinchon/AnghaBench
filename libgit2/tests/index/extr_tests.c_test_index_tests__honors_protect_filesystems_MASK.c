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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

void FUNC7(void)
{
	git_repository *repo;

	FUNC5("invalid", 0700);

	FUNC1(FUNC4(&repo, "./invalid", 0));

	FUNC2(repo, "core.protectHFS", true);
	FUNC2(repo, "core.protectNTFS", true);

	FUNC6(repo, ".git./hello");
	FUNC6(repo, ".git\xe2\x80\xad/hello");
	FUNC6(repo, "git~1/hello");
	FUNC6(repo, ".git\xe2\x81\xaf/hello");

	FUNC3(repo);

	FUNC0("invalid");
}