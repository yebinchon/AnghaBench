#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_reference ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_PACKEDREFS_FILE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loose_tag_ref_name ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (TYPE_1__*) ; 

void FUNC11(void)
{
	/* create a packfile from all the loose refs in a repo */
	git_reference *reference;
	git_buf temp_path = GIT_BUF_INIT;

	/* Ensure a known loose ref can be looked up */
	FUNC2(FUNC7(&reference, g_repo, loose_tag_ref_name));
	FUNC0(FUNC10(reference) == 0);
	FUNC1(reference->name, loose_tag_ref_name);
	FUNC6(reference);

	/*
	 * We are now trying to pack also a loose reference
	 * called `points_to_blob`, to make sure we can properly
	 * pack weak tags
	 */
	FUNC9();

	/* Ensure the packed-refs file exists */
	FUNC2(FUNC4(&temp_path, FUNC8(g_repo), GIT_PACKEDREFS_FILE));
	FUNC0(FUNC5(temp_path.ptr));

	/* Ensure the known ref can still be looked up but is now packed */
	FUNC2(FUNC7(&reference, g_repo, loose_tag_ref_name));
	FUNC0(FUNC10(reference));
	FUNC1(reference->name, loose_tag_ref_name);

	/* Ensure the known ref has been removed from the loose folder structure */
	FUNC2(FUNC4(&temp_path, FUNC8(g_repo), loose_tag_ref_name));
	FUNC0(!FUNC5(temp_path.ptr));

	FUNC6(reference);
	FUNC3(&temp_path);
}