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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	git_repository *repo = FUNC1("testrepo.git");

	FUNC3("refs/fakestash", NULL, repo);

	FUNC2(repo);

	/*
	 * $ git reflog -1 refs/fakestash
	 * a65fedf refs/fakestash@{0}: commit: checking in
	 *
	 * $ git reflog -1 refs/fakestash@{0}
	 * a65fedf refs/fakestash@{0}: commit: checking in
	 *
	 * $ git reflog -1 fakestash
	 * a65fedf fakestash@{0}: commit: checking in
	 *
	 * $ git reflog -1 fakestash@{0}
	 * a65fedf fakestash@{0}: commit: checking in
	 */
	FUNC3("refs/fakestash", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", repo);
	FUNC3("refs/fakestash@{0}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", repo);
	FUNC3("fakestash", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", repo);
	FUNC3("fakestash@{0}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", repo);

	FUNC0();
}