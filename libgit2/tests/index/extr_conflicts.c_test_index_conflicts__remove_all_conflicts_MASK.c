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
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC7(void)
{
	size_t i;
	const git_index_entry *entry;

	FUNC0(FUNC4(repo_index) == 8);

	FUNC1(true, FUNC6(repo_index));

	FUNC2(repo_index);

	FUNC1(false, FUNC6(repo_index));

	FUNC0(FUNC4(repo_index) == 2);

	for (i = 0; i < FUNC4(repo_index); i++) {
		FUNC0(entry = FUNC5(repo_index, i));
		FUNC0(!FUNC3(entry));
	}
}