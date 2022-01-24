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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (size_t*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC7(void)
{
	size_t entry_idx;
	const git_index_entry *entry;

    FUNC1("./mergedrepo/new-file.txt", "new-file\n");

	FUNC2(FUNC3(repo_index, "new-file.txt"));

	FUNC0(!FUNC5(&entry_idx, repo_index, "new-file.txt"));
	FUNC0((entry = FUNC6(repo_index, entry_idx)) != NULL);
	FUNC0(FUNC4(entry) == 0);
}