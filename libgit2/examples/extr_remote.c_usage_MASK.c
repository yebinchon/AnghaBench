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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(const char *msg, const char *arg)
{
	FUNC2("usage: remote add <name> <url>\n", stderr);
	FUNC2("       remote remove <name>\n", stderr);
	FUNC2("       remote rename <old> <new>\n", stderr);
	FUNC2("       remote set-url [--push] <name> <newurl>\n", stderr);
	FUNC2("       remote show [-v|--verbose]\n", stderr);

	if (msg && !arg)
		FUNC1(stderr, "\n%s\n", msg);
	else if (msg && arg)
		FUNC1(stderr, "\n%s: %s\n", msg, arg);
	FUNC0(1);
}