#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_revwalk ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  _head_id ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hide_every_commit_cb ; 

void FUNC7(void)
{
	git_revwalk *walk;
	git_oid id;
	int i, error;

	FUNC1(FUNC4(&walk, _repo));
	FUNC1(FUNC2(walk, hide_every_commit_cb, NULL));
	FUNC1(FUNC2(walk, NULL, NULL));
	FUNC1(FUNC6(walk, &_head_id));

	/* It should return all 6 commits */
	i = 0;
	while ((error = FUNC5(&id, walk)) == 0)
		i++;

	FUNC0(i, 6);
	FUNC0(error, GIT_ITEROVER);

	FUNC3(walk);
}