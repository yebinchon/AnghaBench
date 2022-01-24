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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * com ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (char*,char,char) ; 
 int /*<<< orphan*/  rmlist ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tempdir ; 

char *FUNC5(char *suffix) {
	static int n;
	char *name = FUNC3("%s/lcc%d%d%s", tempdir, FUNC1(), n++, suffix);

	if (FUNC4(com[1], "win32") != NULL)
		name = FUNC2(name, '/', '\\');
	rmlist = FUNC0(name, rmlist);
	return name;
}