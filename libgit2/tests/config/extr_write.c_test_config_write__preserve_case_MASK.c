#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 

void FUNC7(void)
{
	const char *filename = "config-preserve-case";
	git_config *cfg;
	git_buf result = GIT_BUF_INIT;
	const char *expected = "[sOMe]\n" \
		"\tThInG = foo\n" \
		"\tOtheR = thing\n";

	FUNC1(FUNC4(&cfg, filename));
	FUNC1(FUNC5(cfg, "sOMe.ThInG", "foo"));
	FUNC1(FUNC5(cfg, "SomE.OtheR", "thing"));
	FUNC3(cfg);

	FUNC1(FUNC4(&cfg, filename));

	FUNC1(FUNC6(&result, filename));
	FUNC0(expected, result.ptr);
	FUNC2(&result);

	FUNC3(cfg);
}