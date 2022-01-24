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
struct TYPE_4__ {int /*<<< orphan*/  count; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  _remote_name ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(void)
{
	git_reference *underlying;
	git_strarray problems = {0};

	FUNC0(GIT_ENOTFOUND, FUNC3(&underlying, _repo, "refs/remotes/just/renamed"));
	FUNC1(FUNC3(&underlying, _repo, "refs/remotes/test/master"));
	FUNC2(underlying);

	FUNC1(FUNC4(&problems, _repo, _remote_name, "just/renamed"));
	FUNC0(0, problems.count);
	FUNC5(&problems);

	FUNC0(GIT_ENOTFOUND, FUNC3(&underlying, _repo, "refs/remotes/test/master"));
	FUNC1(FUNC3(&underlying, _repo, "refs/remotes/just/renamed/master"));
	FUNC2(underlying);
}