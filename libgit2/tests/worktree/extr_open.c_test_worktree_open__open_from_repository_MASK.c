#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  locked; int /*<<< orphan*/  commondir_path; int /*<<< orphan*/  parent_path; int /*<<< orphan*/  gitlink_path; int /*<<< orphan*/  gitdir_path; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_worktree ;
struct TYPE_7__ {int /*<<< orphan*/  repo; int /*<<< orphan*/  worktree; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORKTREE_REPO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_5__ fixture ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	git_worktree *opened, *lookedup;

	FUNC2(FUNC5(&opened, fixture.worktree));
	FUNC2(FUNC4(&lookedup, fixture.repo, WORKTREE_REPO));

	FUNC1(opened->name, lookedup->name);
	FUNC1(opened->gitdir_path, lookedup->gitdir_path);
	FUNC1(opened->gitlink_path, lookedup->gitlink_path);
	FUNC1(opened->parent_path, lookedup->parent_path);
	FUNC1(opened->commondir_path, lookedup->commondir_path);
	FUNC0(opened->locked, lookedup->locked);

	FUNC3(opened);
	FUNC3(lookedup);
}