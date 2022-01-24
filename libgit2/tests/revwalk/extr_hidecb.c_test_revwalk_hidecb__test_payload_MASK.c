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
 int /*<<< orphan*/  GIT_SORT_TOPOLOGICAL ; 
 int /*<<< orphan*/  _head_id ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * commit_ids ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hide_commit_use_payload_cb ; 

void FUNC9(void)
{
	git_revwalk *walk;
	git_oid id;
	int i, error;

	FUNC2(FUNC5(&walk, _repo));
	FUNC2(FUNC7(walk, &_head_id));
	FUNC8(walk, GIT_SORT_TOPOLOGICAL);

	/* Add hide callback, pass id of parent of initial commit as payload data */
	FUNC2(FUNC3(walk, hide_commit_use_payload_cb, &commit_ids[5]));

	i = 0;
	while ((error = FUNC6(&id, walk)) == 0) {
		FUNC1(&commit_ids[i], &id);
		i++;
	}

	/* walker should return four commits */
	FUNC0(i, 4);
	FUNC0(error, GIT_ITEROVER);

	FUNC4(walk);
}