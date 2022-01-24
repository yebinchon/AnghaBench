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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(const char *me, char *arg)
{
	const char *my_argv[4];

	FUNC2();
	if (!arg || !(arg = FUNC3(arg)) || *arg == '-')
		FUNC0("bad argument");
	if (!FUNC4(me, "git-"))
		FUNC0("bad command");

	my_argv[0] = me + 4;
	my_argv[1] = arg;
	my_argv[2] = NULL;

	return FUNC1(my_argv);
}