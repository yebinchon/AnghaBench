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
	const char *filename = "config-repeated";
	git_config *cfg;
	git_buf result = GIT_BUF_INIT;
	const char *expected = "[sample \"prefix\"]\n\
\tsetting1 = someValue1\n\
\tsetting2 = someValue2\n\
\tsetting3 = someValue3\n\
\tsetting4 = someValue4\n\
";
	FUNC1(FUNC4(&cfg, filename));
	FUNC1(FUNC5(cfg, "sample.prefix.setting1", "someValue1"));
	FUNC1(FUNC5(cfg, "sample.prefix.setting2", "someValue2"));
	FUNC1(FUNC5(cfg, "sample.prefix.setting3", "someValue3"));
	FUNC1(FUNC5(cfg, "sample.prefix.setting4", "someValue4"));
	FUNC3(cfg);

	FUNC1(FUNC4(&cfg, filename));

	FUNC1(FUNC6(&result, filename));
	FUNC0(expected, result.ptr);
	FUNC2(&result);

	FUNC3(cfg);
}