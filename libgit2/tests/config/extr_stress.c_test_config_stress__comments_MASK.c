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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	git_config *config;

	FUNC2(FUNC4(&config, FUNC1("config/config12")));

	FUNC0(config, "some.section.test2", "hello");
	FUNC0(config, "some.section.test3", "welcome");
	FUNC0(config, "some.section.other", "hello! \" ; ; ; ");
	FUNC0(config, "some.section.other2", "cool! \" # # # ");
	FUNC0(config, "some.section.multi", "hi, this is a ; multiline comment # with ;\n special chars and other stuff !@#");
	FUNC0(config, "some.section.multi2", "good, this is a ; multiline comment # with ;\n special chars and other stuff !@#");
	FUNC0(config, "some.section.back", "this is \ba phrase");

	FUNC3(config);
}