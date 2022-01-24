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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  repo_index ; 

__attribute__((used)) static size_t FUNC4(void)
{
	const git_index_entry *entry;
	size_t count = 0;
	size_t i;

	for (i = 0; i < FUNC2(repo_index); i++) {
		FUNC0(entry = FUNC3(repo_index, i));

		if (FUNC1(entry))
			count++;
	}

	return count;
}