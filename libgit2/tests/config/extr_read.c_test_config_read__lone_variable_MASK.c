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
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC12(void)
{
	git_config *cfg;
	int i;

	FUNC4(FUNC11(&cfg, FUNC2("config/config4")));

	FUNC3(FUNC9(&i, cfg, "some.section.variable"));

	FUNC4(FUNC10(&buf, cfg, "some.section.variable"));
	FUNC1("", FUNC6(&buf));
	FUNC5(&buf);

	FUNC4(FUNC8(&i, cfg, "some.section.variable"));
	FUNC0(i == 1);

	FUNC4(FUNC10(&buf, cfg, "some.section.variableeq"));
	FUNC1("", FUNC6(&buf));

	FUNC4(FUNC8(&i, cfg, "some.section.variableeq"));
	FUNC0(i == 0);

	FUNC7(cfg);
}