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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ entry_count0 ; 
 int /*<<< orphan*/ * entry_paths0 ; 
 unsigned int* entry_statuses0 ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	int i;
	unsigned int status_flags;
	git_repository *repo = FUNC2("status");

	for (i = 0; i < (int)entry_count0; i++) {
		FUNC1(
			FUNC3(&status_flags, repo, entry_paths0[i])
		);
		FUNC0(entry_statuses0[i] == status_flags);
	}
}