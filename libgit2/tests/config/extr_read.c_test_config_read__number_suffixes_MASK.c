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
typedef  int int64_t ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	git_config *cfg;
	int64_t i;

	FUNC2(FUNC5(&cfg, FUNC1("config/config5")));

	FUNC2(FUNC4(&i, cfg, "number.simple"));
	FUNC0(i == 1);

	FUNC2(FUNC4(&i, cfg, "number.k"));
	FUNC0(i == 1 * 1024);

	FUNC2(FUNC4(&i, cfg, "number.kk"));
	FUNC0(i == 1 * 1024);

	FUNC2(FUNC4(&i, cfg, "number.m"));
	FUNC0(i == 1 * 1024 * 1024);

	FUNC2(FUNC4(&i, cfg, "number.mm"));
	FUNC0(i == 1 * 1024 * 1024);

	FUNC2(FUNC4(&i, cfg, "number.g"));
	FUNC0(i == 1 * 1024 * 1024 * 1024);

	FUNC2(FUNC4(&i, cfg, "number.gg"));
	FUNC0(i == 1 * 1024 * 1024 * 1024);

	FUNC3(cfg);
}