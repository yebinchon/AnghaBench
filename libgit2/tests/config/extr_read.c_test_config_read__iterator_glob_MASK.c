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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	git_config *cfg;

	FUNC2(FUNC4(&cfg, FUNC1("config/config9")));

	FUNC0(cfg, "core.*", 3);
	FUNC0(cfg, "remote\\.ab.*", 2);
	FUNC0(cfg, ".*url$", 2);
	FUNC0(cfg, ".*dummy.*", 2);
	FUNC0(cfg, ".*nomatch.*", 0);

	FUNC3(cfg);
}