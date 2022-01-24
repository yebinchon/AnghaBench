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
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  count_cfg_entries ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	git_config *cfg;
	int count;

	FUNC2(FUNC5(&cfg, FUNC1("config/config9")));

	count = 0;
	FUNC2(
		FUNC3(cfg, "core.*", count_cfg_entries, &count));
	FUNC0(3, count);

	count = 0;
	FUNC2(
		FUNC3(cfg, "remote\\.ab.*", count_cfg_entries, &count));
	FUNC0(2, count);

	count = 0;
	FUNC2(
		FUNC3(cfg, ".*url$", count_cfg_entries, &count));
	FUNC0(2, count);

	count = 0;
	FUNC2(
		FUNC3(cfg, ".*dummy.*", count_cfg_entries, &count));
	FUNC0(2, count);

	count = 0;
	FUNC2(
		FUNC3(cfg, ".*nomatch.*", count_cfg_entries, &count));
	FUNC0(0, count);

	FUNC4(cfg);
}