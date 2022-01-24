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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2(void)
{
	FUNC1("attr/.gitignore",
		"/*/\n"
		"!/src\n");
	FUNC0(false, "src/foo.c");
	FUNC0(false, "src/foo/foo.c");
	FUNC0(false, "README.md");
	FUNC0(true, "dist/foo.o");
	FUNC0(true, "bin/foo");
}