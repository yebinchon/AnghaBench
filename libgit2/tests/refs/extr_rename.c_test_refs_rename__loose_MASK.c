#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_reference ;
struct TYPE_12__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 char const* loose_tag_ref_name ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 

void FUNC12(void)
{
	/* rename a loose reference */
	git_reference *looked_up_ref, *new_ref, *another_looked_up_ref;
	git_buf temp_path = GIT_BUF_INIT;
	const char *new_name = "refs/tags/Nemo/knows/refs.kung-fu";

	/* Ensure the ref doesn't exist on the file system */
	FUNC3(FUNC5(&temp_path, FUNC10(g_repo), new_name));
	FUNC0(!FUNC6(temp_path.ptr));

	/* Retrieval of the reference to rename */
	FUNC3(FUNC8(&looked_up_ref, g_repo, loose_tag_ref_name));

	/* ... which is indeed loose */
	FUNC0(FUNC11(looked_up_ref) == 0);

	/* Now that the reference is renamed... */
	FUNC3(FUNC9(&new_ref, looked_up_ref, new_name, 0, NULL));
	FUNC1(new_ref->name, new_name);
	FUNC7(looked_up_ref);

	/* ...It can't be looked-up with the old name... */
	FUNC2(FUNC8(&another_looked_up_ref, g_repo, loose_tag_ref_name));

	/* ...but the new name works ok... */
	FUNC3(FUNC8(&another_looked_up_ref, g_repo, new_name));
	FUNC1(new_ref->name, new_name);

	/* .. the new ref is loose... */
	FUNC0(FUNC11(another_looked_up_ref) == 0);
	FUNC0(FUNC11(new_ref) == 0);

	/* ...and the ref can be found in the file system */
	FUNC3(FUNC5(&temp_path, FUNC10(g_repo), new_name));
	FUNC0(FUNC6(temp_path.ptr));

	FUNC7(new_ref);
	FUNC7(another_looked_up_ref);
	FUNC4(&temp_path);
}