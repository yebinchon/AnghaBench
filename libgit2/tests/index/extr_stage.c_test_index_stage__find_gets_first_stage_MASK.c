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
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC4(void)
{
	size_t entry_idx;
	const git_index_entry *entry;

	FUNC0(!FUNC2(&entry_idx, repo_index, "one.txt"));
	FUNC0((entry = FUNC3(repo_index, entry_idx)) != NULL);
	FUNC0(FUNC1(entry) == 0);

	FUNC0(!FUNC2(&entry_idx, repo_index, "two.txt"));
	FUNC0((entry = FUNC3(repo_index, entry_idx)) != NULL);
	FUNC0(FUNC1(entry) == 0);

	FUNC0(!FUNC2(&entry_idx, repo_index, "conflicts-one.txt"));
	FUNC0((entry = FUNC3(repo_index, entry_idx)) != NULL);
	FUNC0(FUNC1(entry) == 1);

	FUNC0(!FUNC2(&entry_idx, repo_index, "conflicts-two.txt"));
	FUNC0((entry = FUNC3(repo_index, entry_idx)) != NULL);
	FUNC0(FUNC1(entry) == 1);
}