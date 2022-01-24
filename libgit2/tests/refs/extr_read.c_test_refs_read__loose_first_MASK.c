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
 int GIT_REFERENCE_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  packed_head_name ; 
 int /*<<< orphan*/  packed_test_head_name ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

void FUNC7(void)
{
	/* assure that a loose reference is looked up before a packed reference */
	git_reference *reference;

	FUNC2(FUNC4(&reference, g_repo, packed_head_name));
	FUNC3(reference);
	FUNC2(FUNC4(&reference, g_repo, packed_test_head_name));
	FUNC0(FUNC5(reference) & GIT_REFERENCE_DIRECT);
	FUNC0(FUNC6(reference) == 0);
	FUNC1(reference->name, packed_test_head_name);

	FUNC3(reference);
}