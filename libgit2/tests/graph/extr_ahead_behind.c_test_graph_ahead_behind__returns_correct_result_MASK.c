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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  _repo ; 
 int ahead ; 
 int behind ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * commit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

void FUNC7(void)
{	
	git_oid oid;
	git_oid oid2;
	git_commit *other;

	FUNC1(FUNC6(&oid, "e90810b8df3e80c413d903f631643c716887138d"));
	FUNC1(FUNC6(&oid2, "be3563ae3f795b2b4353bcce3a527ad0a4f7f644"));
	
	FUNC1(FUNC5(&ahead, &behind, _repo, &oid, &oid2));
	FUNC0(2, ahead);
	FUNC0(6, behind);

	FUNC1(FUNC5(&ahead, &behind, _repo, FUNC3(commit), FUNC3(commit)));
	FUNC0(ahead, behind);
	FUNC1(FUNC4(&other, commit, 1));

	FUNC1(FUNC5(&ahead, &behind, _repo, FUNC3(commit), FUNC3(other)));
	FUNC0(ahead, behind + 2);
	FUNC1(FUNC5(&ahead, &behind, _repo, FUNC3(other), FUNC3(commit)));
	FUNC0(ahead + 2, behind);

	FUNC2(other);

	FUNC1(FUNC4(&other, commit, 3));

	FUNC1(FUNC5(&ahead, &behind, _repo, FUNC3(commit), FUNC3(other)));
	FUNC0(ahead, behind + 4);
	FUNC1(FUNC5(&ahead, &behind, _repo, FUNC3(other), FUNC3(commit)));
	FUNC0(ahead + 4, behind);

	FUNC2(other);
}