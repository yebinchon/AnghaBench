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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 scalar_t__ GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC7(void)
{
	git_config *cfg;
	int32_t i;

	FUNC1(FUNC5(&cfg, "config9"));
	FUNC1(FUNC6(cfg, "core.dummy", 5));
	FUNC3(cfg);

	FUNC1(FUNC5(&cfg, "config9"));
	FUNC1(FUNC2(cfg, "core.dummy"));
	FUNC3(cfg);

	FUNC1(FUNC5(&cfg, "config9"));
	FUNC0(FUNC4(&i, cfg, "core.dummy") == GIT_ENOTFOUND);
	FUNC1(FUNC6(cfg, "core.dummy", 1));
	FUNC3(cfg);
}