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

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  _sig ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 

void FUNC5(void)
{
	int error;
	git_oid target_oid;

	FUNC2(FUNC4(&target_oid, "8496071c1b46c854b31185ea97743be6a8774479"));
	FUNC2(FUNC3(_repo, "refs/notes/fanout", _sig, _sig, &target_oid));
	
	error = FUNC3(_repo, "refs/notes/fanout", _sig, _sig, &target_oid);
	FUNC1(error);
	FUNC0(GIT_ENOTFOUND, error);
}