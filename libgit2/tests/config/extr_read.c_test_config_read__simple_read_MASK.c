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
typedef  int int32_t ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
	git_config *cfg;
	int32_t i;

	FUNC2(FUNC6(&cfg, FUNC1("config/config0")));

	FUNC2(FUNC5(&i, cfg, "core.repositoryformatversion"));
	FUNC0(i == 0);
	FUNC2(FUNC4(&i, cfg, "core.filemode"));
	FUNC0(i == 1);
	FUNC2(FUNC4(&i, cfg, "core.bare"));
	FUNC0(i == 0);
	FUNC2(FUNC4(&i, cfg, "core.logallrefupdates"));
	FUNC0(i == 1);

	FUNC3(cfg);
}