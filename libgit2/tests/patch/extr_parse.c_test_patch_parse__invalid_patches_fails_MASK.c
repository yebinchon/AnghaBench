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
typedef  int /*<<< orphan*/  git_patch ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR ; 
 int /*<<< orphan*/  PATCH_CORRUPT_GIT_HEADER ; 
 int /*<<< orphan*/  PATCH_CORRUPT_MISSING_HUNK_HEADER ; 
 int /*<<< orphan*/  PATCH_CORRUPT_MISSING_NEW_FILE ; 
 int /*<<< orphan*/  PATCH_CORRUPT_MISSING_OLD_FILE ; 
 int /*<<< orphan*/  PATCH_CORRUPT_NO_CHANGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	git_patch *patch;

	FUNC0(GIT_ERROR,
		FUNC1(&patch, PATCH_CORRUPT_GIT_HEADER,
		FUNC2(PATCH_CORRUPT_GIT_HEADER), NULL));
	FUNC0(GIT_ERROR,
		FUNC1(&patch,
		PATCH_CORRUPT_MISSING_NEW_FILE,
		FUNC2(PATCH_CORRUPT_MISSING_NEW_FILE), NULL));
	FUNC0(GIT_ERROR,
		FUNC1(&patch,
		PATCH_CORRUPT_MISSING_OLD_FILE,
		FUNC2(PATCH_CORRUPT_MISSING_OLD_FILE), NULL));
	FUNC0(GIT_ERROR,
		FUNC1(&patch, PATCH_CORRUPT_NO_CHANGES,
		FUNC2(PATCH_CORRUPT_NO_CHANGES), NULL));
	FUNC0(GIT_ERROR,
		FUNC1(&patch,
		PATCH_CORRUPT_MISSING_HUNK_HEADER,
		FUNC2(PATCH_CORRUPT_MISSING_HUNK_HEADER), NULL));
}