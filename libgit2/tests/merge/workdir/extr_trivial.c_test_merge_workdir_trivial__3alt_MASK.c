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
typedef  int /*<<< orphan*/  git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC6(void)
{
	const git_index_entry *entry;

	FUNC1(FUNC4("trivial-3alt", "trivial-3alt-branch"));

	FUNC0(entry = FUNC2(repo_index, "new-in-3alt.txt", 0));
	FUNC0(FUNC3(repo_index) == 0);
	FUNC0(FUNC5() == 0);
}