#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_2__ {int /*<<< orphan*/  repo; int /*<<< orphan*/  worktree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ fixture ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	git_config *cfg;
	int32_t val;

	FUNC1(FUNC5(&cfg, fixture.worktree));
	FUNC1(FUNC4(cfg, "core.dummy", 5));
	FUNC2(cfg);

	/*
	 * reopen to verify configuration has been set in the
	 * common dir
	 */
	FUNC1(FUNC5(&cfg, fixture.repo));
	FUNC1(FUNC3(&val, cfg, "core.dummy"));
	FUNC0(val, 5);
	FUNC2(cfg);
}