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

/* Variables and functions */
 int /*<<< orphan*/  _head_id ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int commit_count ; 
 int /*<<< orphan*/  commit_head ; 
 int /*<<< orphan*/ * commit_ids ; 
 int /*<<< orphan*/ * commit_strs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	int i;

	FUNC1(FUNC3(&_repo, FUNC0("testrepo.git")));
	FUNC1(FUNC2(&_head_id, commit_head));

	for (i = 0; i < commit_count; i++)
		FUNC1(FUNC2(&commit_ids[i], commit_strs[i]));

}