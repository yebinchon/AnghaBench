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
 scalar_t__ GIT_STATUS_IGNORED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ entry_count0 ; 
 char** entry_paths0 ; 
 scalar_t__* entry_statuses0 ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,char*) ; 

void FUNC4(void)
{
	int i, ignored;
	git_repository *repo = FUNC2("status");

	for (i = 0; i < (int)entry_count0; i++) {
		FUNC1(
			FUNC3(&ignored, repo, entry_paths0[i])
		);
		FUNC0(ignored == (entry_statuses0[i] == GIT_STATUS_IGNORED));
	}

	FUNC1(
		FUNC3(&ignored, repo, "nonexistent_file")
	);
	FUNC0(!ignored);

	FUNC1(
		FUNC3(&ignored, repo, "ignored_nonexistent_file")
	);
	FUNC0(ignored);
}