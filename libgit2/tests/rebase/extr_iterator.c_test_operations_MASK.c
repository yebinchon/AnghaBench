#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  exec; int /*<<< orphan*/  id; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ git_rebase_operation ;
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 size_t GIT_REBASE_OPERATION_PICK ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(git_rebase *rebase, size_t expected_current)
{
	size_t i, expected_count = 5;
	git_oid expected_oid[5];
	git_rebase_operation *operation;

	FUNC3(&expected_oid[0], "da9c51a23d02d931a486f45ad18cda05cf5d2b94");
	FUNC3(&expected_oid[1], "8d1f13f93c4995760ac07d129246ac1ff64c0be9");
	FUNC3(&expected_oid[2], "3069cc907e6294623e5917ef6de663928c1febfb");
	FUNC3(&expected_oid[3], "588e5d2f04d49707fe4aab865e1deacaf7ef6787");
	FUNC3(&expected_oid[4], "b146bd7608eac53d9bf9e1a6963543588b555c64");

	FUNC0(expected_count, FUNC6(rebase));
	FUNC0(expected_current, FUNC5(rebase));

	for (i = 0; i < expected_count; i++) {
		operation = FUNC4(rebase, i);
		FUNC0(GIT_REBASE_OPERATION_PICK, operation->type);
		FUNC1(&expected_oid[i], &operation->id);
		FUNC2(NULL, operation->exec);
	}
}