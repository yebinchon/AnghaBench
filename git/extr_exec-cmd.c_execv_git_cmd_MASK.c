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
struct argv_array {scalar_t__ argv; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct argv_array*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

int FUNC6(const char **argv)
{
	struct argv_array nargv = ARGV_ARRAY_INIT;

	FUNC1(&nargv, argv);
	FUNC4(nargv.argv, "trace: exec:");

	/* execvp() can only ever return if it fails */
	FUNC2("git", (char **)nargv.argv);

	FUNC5("trace: exec failed: %s\n", FUNC3(errno));

	FUNC0(&nargv);
	return -1;
}