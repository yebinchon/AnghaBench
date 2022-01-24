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
typedef  int /*<<< orphan*/  git_index_reuc_entry ;
typedef  int /*<<< orphan*/  git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC7(void)
{
	const git_index_entry *entry;
	const git_index_reuc_entry *reuc;

	FUNC1(FUNC5("trivial-8", "trivial-8-branch"));

	FUNC0((entry = FUNC2(repo_index, "removed-in-8.txt", 0)) == NULL);

	FUNC0(FUNC3(repo_index) == 1);
	FUNC0(reuc = FUNC4(repo_index, "removed-in-8.txt"));

	FUNC0(FUNC6() == 0);
}