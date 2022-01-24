#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  packed_head_name ; 
 int /*<<< orphan*/  packed_test_head_name ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	/* renaming a packed reference does not pack another reference which happens to be in both loose and pack state */
	git_reference *looked_up_ref, *another_looked_up_ref, *renamed_ref;
	git_buf temp_path = GIT_BUF_INIT;
	const char *brand_new_name = "refs/heads/brand_new_name";

	/* Ensure the other reference exists on the file system */
	FUNC1(FUNC3(&temp_path, FUNC8(g_repo), packed_test_head_name));
	FUNC0(FUNC4(temp_path.ptr));

	/* Lookup the other reference */
	FUNC1(FUNC6(&another_looked_up_ref, g_repo, packed_test_head_name));

	/* Ensure it's loose */
	FUNC0(FUNC9(another_looked_up_ref) == 0);
	FUNC5(another_looked_up_ref);

	/* Lookup the reference to rename */
	FUNC1(FUNC6(&looked_up_ref, g_repo, packed_head_name));

	/* Ensure it's packed */
	FUNC0(FUNC9(looked_up_ref) != 0);

	/* Now that the reference is renamed... */
	FUNC1(FUNC7(&renamed_ref, looked_up_ref, brand_new_name, 0, NULL));
	FUNC5(looked_up_ref);

	/* Lookup the other reference */
	FUNC1(FUNC6(&another_looked_up_ref, g_repo, packed_test_head_name));

	/* Ensure it's loose */
	FUNC0(FUNC9(another_looked_up_ref) == 0);

	/* Ensure the other ref still exists on the file system */
	FUNC0(FUNC4(temp_path.ptr));

	FUNC5(renamed_ref);
	FUNC5(another_looked_up_ref);
	FUNC2(&temp_path);
}