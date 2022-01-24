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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct stat*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/ * stdout ; 

void FUNC9(FILE *f, const char *desc)
{
	static int skip_stdout_flush = -1;
	struct stat st;
	char *cp;

	if (f == stdout) {
		if (skip_stdout_flush < 0) {
			cp = FUNC8("GIT_FLUSH");
			if (cp)
				skip_stdout_flush = (FUNC1(cp) == 0);
			else if ((FUNC7(FUNC6(stdout), &st) == 0) &&
				 FUNC0(st.st_mode))
				skip_stdout_flush = 1;
			else
				skip_stdout_flush = 0;
		}
		if (skip_stdout_flush && !FUNC4(f))
			return;
	}
	if (FUNC5(f)) {
		FUNC2(errno);
		FUNC3("write failure on '%s'", desc);
	}
}