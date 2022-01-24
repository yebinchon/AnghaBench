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
typedef  int /*<<< orphan*/  git_tag ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_reference ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_12__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 scalar_t__ GIT_OBJECT_TAG ; 
 int GIT_REFERENCE_DIRECT ; 
 int /*<<< orphan*/  GIT_REFS_TAGS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  loose_tag_ref_name ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 

void FUNC14(void)
{
	/* lookup a loose tag reference */
	git_reference *reference;
	git_object *object;
	git_buf ref_name_from_tag_name = GIT_BUF_INIT;

	FUNC2(FUNC9(&reference, g_repo, loose_tag_ref_name));
	FUNC0(FUNC11(reference) & GIT_REFERENCE_DIRECT);
	FUNC0(FUNC13(reference) == 0);
	FUNC1(reference->name, loose_tag_ref_name);

	FUNC2(FUNC6(&object, g_repo, FUNC10(reference), GIT_OBJECT_ANY));
	FUNC0(object != NULL);
	FUNC0(FUNC7(object) == GIT_OBJECT_TAG);

	/* Ensure the name of the tag matches the name of the reference */
	FUNC2(FUNC4(&ref_name_from_tag_name, GIT_REFS_TAGS_DIR, FUNC12((git_tag *)object)));
	FUNC1(ref_name_from_tag_name.ptr, loose_tag_ref_name);
	FUNC3(&ref_name_from_tag_name);

	FUNC5(object);

	FUNC8(reference);
}