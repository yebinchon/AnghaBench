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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  packed_test_head_name ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(void)
{
	/* deleting a ref which is both packed and loose should remove both tracks in the filesystem */
	git_reference *looked_up_ref, *another_looked_up_ref;
	git_buf temp_path = GIT_BUF_INIT;

	/* Ensure the loose reference exists on the file system */
	FUNC2(FUNC4(&temp_path, FUNC9(g_repo), packed_test_head_name));
	FUNC0(FUNC5(temp_path.ptr));

	/* Lookup the reference */
	FUNC2(FUNC8(&looked_up_ref, g_repo, packed_test_head_name));

	/* Ensure it's the loose version that has been found */
	FUNC0(FUNC10(looked_up_ref) == 0);

	/* Now that the reference is deleted... */
	FUNC2(FUNC6(looked_up_ref));
	FUNC7(looked_up_ref);

	/* Looking up the reference once again should not retrieve it */
	FUNC1(FUNC8(&another_looked_up_ref, g_repo, packed_test_head_name));

	/* Ensure the loose reference doesn't exist any longer on the file system */
	FUNC0(!FUNC5(temp_path.ptr));

	FUNC7(another_looked_up_ref);
	FUNC3(&temp_path);
}