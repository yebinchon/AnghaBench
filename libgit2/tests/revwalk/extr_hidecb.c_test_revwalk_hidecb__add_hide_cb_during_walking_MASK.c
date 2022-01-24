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
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  _head_id ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hide_none_cb ; 

void FUNC7(void)
{
	git_revwalk *walk;
	git_oid id;
	int error;

	FUNC1(FUNC4(&walk, _repo));
	FUNC1(FUNC6(walk, &_head_id));

	/* Start walking without adding hide callback */
	FUNC1(FUNC5(&id, walk));

	/* Now add hide callback */
	FUNC1(FUNC2(walk, hide_none_cb, NULL));

	/* walk should be reset */
	error = FUNC5(&id, walk);
	FUNC0(error, GIT_ITEROVER);

	FUNC3(walk);
}