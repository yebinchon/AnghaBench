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
 int /*<<< orphan*/  GIT_EEXISTS ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  _sig ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

void FUNC6(void)
{
	int error;
	git_oid note_oid, target_oid;

	FUNC2(FUNC5(&target_oid, "08b041783f40edfe12bb406c9c9a8a040177c125"));

	FUNC3(&note_oid, NULL, "08b041783f40edfe12bb406c9c9a8a040177c125", "hello world\n");
	error = FUNC4(&note_oid, _repo, NULL, _sig, _sig, &target_oid, "hello world\n", 0);
	FUNC1(error);
	FUNC0(GIT_EEXISTS, error);

	FUNC3(&note_oid, "refs/notes/some/namespace", "08b041783f40edfe12bb406c9c9a8a040177c125", "hello world\n");
	error = FUNC4(&note_oid, _repo, "refs/notes/some/namespace", _sig, _sig, &target_oid, "hello world\n", 0);
	FUNC1(error);
	FUNC0(GIT_EEXISTS, error);
}