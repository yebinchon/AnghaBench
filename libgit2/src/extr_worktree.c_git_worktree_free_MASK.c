#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* name; struct TYPE_4__* parent_path; struct TYPE_4__* gitdir_path; struct TYPE_4__* gitlink_path; struct TYPE_4__* worktree_path; struct TYPE_4__* commondir_path; } ;
typedef  TYPE_1__ git_worktree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(git_worktree *wt)
{
	if (!wt)
		return;

	FUNC0(wt->commondir_path);
	FUNC0(wt->worktree_path);
	FUNC0(wt->gitlink_path);
	FUNC0(wt->gitdir_path);
	FUNC0(wt->parent_path);
	FUNC0(wt->name);
	FUNC0(wt);
}