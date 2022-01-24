#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int val; } ;
struct TYPE_4__ {TYPE_1__ refcount; } ;
typedef  TYPE_2__ git_refcount ;
typedef  int /*<<< orphan*/  git_odb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * repo ; 

void FUNC6(void)
{
	git_odb *new_odb;

	FUNC1(FUNC3(&new_odb, "./testrepo.git/objects"));
	FUNC0(((git_refcount *)new_odb)->refcount.val == 1);

	FUNC5(repo, new_odb);
	FUNC0(((git_refcount *)new_odb)->refcount.val == 2);

	FUNC4(repo);
	FUNC0(((git_refcount *)new_odb)->refcount.val == 1);

	FUNC2(new_odb);

	/* 
	 * Ensure the cleanup method won't try to free the repo as it's already been taken care of
	 */
	repo = NULL;
}