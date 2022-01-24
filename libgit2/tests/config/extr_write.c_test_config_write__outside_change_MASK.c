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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC7(void)
{
	int32_t tmp;
	git_config *cfg;
	const char *filename = "config-ext-change";

	FUNC1(filename, "[old]\nvalue = 5\n");

	FUNC2(FUNC5(&cfg, filename));

	FUNC2(FUNC4(&tmp, cfg, "old.value"));

	/* Change the value on the file itself (simulate external process) */
	FUNC1(filename, "[old]\nvalue = 6\n");

	FUNC2(FUNC6(cfg, "new.value", 7));

	FUNC2(FUNC4(&tmp, cfg, "old.value"));
	FUNC0(6, tmp);

	FUNC3(cfg);
}