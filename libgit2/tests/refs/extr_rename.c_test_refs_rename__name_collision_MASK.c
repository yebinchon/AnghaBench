#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  packed_head_name ; 
 int /*<<< orphan*/  packed_test_head_name ; 

void FUNC6(void)
{
	/* can not rename a reference with the name of an existing reference */
	git_reference *looked_up_ref, *renamed_ref;

	/* An existing reference... */
	FUNC2(FUNC4(&looked_up_ref, g_repo, packed_head_name));

	/* Can not be renamed to the name of another existing reference. */
	FUNC1(FUNC5(&renamed_ref, looked_up_ref, packed_test_head_name, 0, NULL));
	FUNC3(looked_up_ref);

	/* Failure to rename it hasn't corrupted its state */
	FUNC2(FUNC4(&looked_up_ref, g_repo, packed_head_name));
	FUNC0(looked_up_ref->name, packed_head_name);

	FUNC3(looked_up_ref);
}