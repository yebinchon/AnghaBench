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
 int /*<<< orphan*/  GIT_LOCALE_PATH ; 
 int /*<<< orphan*/  GIT_TEXT_DOMAIN_DIR_ENVIRONMENT ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LC_TIME ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void)
{
	const char *podir = FUNC2(GIT_TEXT_DOMAIN_DIR_ENVIRONMENT);
	char *p = NULL;

	if (!podir)
		podir = p = FUNC6(GIT_LOCALE_PATH);

	FUNC8(); /* getenv() reentrancy paranoia */

	if (!FUNC4(podir)) {
		FUNC1(p);
		return;
	}

	FUNC0("git", podir);
	FUNC5(LC_MESSAGES, "");
	FUNC5(LC_TIME, "");
	FUNC3("git");
	FUNC7("git");

	FUNC1(p);
}