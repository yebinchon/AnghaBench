#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  st ;
struct TYPE_2__ {scalar_t__ klass; int /*<<< orphan*/  message; } ;

/* Variables and functions */
 scalar_t__ GIT_ERROR_NOMEMORY ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  GIT_ERROR_REPOSITORY ; 
 int /*<<< orphan*/  FUNC0 (struct stat) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct stat*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (char*,struct stat*) ; 
 scalar_t__ FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,char*) ; 

void FUNC12(void)
{
	char *str_in_error;

	FUNC4();
	FUNC2(FUNC5() == NULL);

	FUNC7(); /* internal fn */

	FUNC2(FUNC5() != NULL);
	FUNC2(FUNC5()->klass == GIT_ERROR_NOMEMORY);
	str_in_error = FUNC11(FUNC5()->message, "memory");
	FUNC2(str_in_error != NULL);

	FUNC4();

	FUNC6(GIT_ERROR_REPOSITORY, "This is a test"); /* internal fn */

	FUNC2(FUNC5() != NULL);
	str_in_error = FUNC11(FUNC5()->message, "This is a test");
	FUNC2(str_in_error != NULL);

	FUNC4();
	FUNC2(FUNC5() == NULL);

	do {
		struct stat st;
		FUNC8(&st, 0, sizeof(st));
		FUNC2(FUNC9("this_file_does_not_exist", &st) < 0);
		FUNC0(st);
	} while (false);
	FUNC6(GIT_ERROR_OS, "stat failed"); /* internal fn */

	FUNC2(FUNC5() != NULL);
	str_in_error = FUNC11(FUNC5()->message, "stat failed");
	FUNC2(str_in_error != NULL);
	FUNC2(FUNC3(str_in_error, "stat failed: ") == 0);
	FUNC2(FUNC10(str_in_error) > FUNC10("stat failed: "));

#ifdef GIT_WIN32
	git_error_clear();

	/* The MSDN docs use this to generate a sample error */
	cl_assert(GetProcessId(NULL) == 0);
	git_error_set(GIT_ERROR_OS, "GetProcessId failed"); /* internal fn */

	cl_assert(git_error_last() != NULL);
	str_in_error = strstr(git_error_last()->message, "GetProcessId failed");
	cl_assert(str_in_error != NULL);
	cl_assert(git__prefixcmp(str_in_error, "GetProcessId failed: ") == 0);
	cl_assert(strlen(str_in_error) > strlen("GetProcessId failed: "));
#endif

	FUNC4();
}