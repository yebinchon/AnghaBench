#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_reference ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 scalar_t__ GIT_OBJECT_COMMIT ; 
 int GIT_REFERENCE_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  packed_head_name ; 
 int FUNC10 (TYPE_1__*) ; 

void FUNC11(void)
{
	/* lookup a packed reference */
	git_reference *reference;
	git_object *object;

	FUNC2(FUNC7(&reference, g_repo, packed_head_name));
	FUNC0(FUNC9(reference) & GIT_REFERENCE_DIRECT);
	FUNC0(FUNC10(reference));
	FUNC1(reference->name, packed_head_name);

	FUNC2(FUNC4(&object, g_repo, FUNC8(reference), GIT_OBJECT_ANY));
	FUNC0(object != NULL);
	FUNC0(FUNC5(object) == GIT_OBJECT_COMMIT);

	FUNC3(object);

	FUNC6(reference);
}