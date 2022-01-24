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
typedef  enum missing_commit_check_level { ____Placeholder_missing_commit_check_level } missing_commit_check_level ;

/* Variables and functions */
 int MISSING_COMMIT_CHECK_ERROR ; 
 int MISSING_COMMIT_CHECK_IGNORE ; 
 int MISSING_COMMIT_CHECK_WARN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static enum missing_commit_check_level FUNC4(void)
{
	const char *value;

	if (FUNC1("rebase.missingcommitscheck", &value) ||
			!FUNC2("ignore", value))
		return MISSING_COMMIT_CHECK_IGNORE;
	if (!FUNC2("warn", value))
		return MISSING_COMMIT_CHECK_WARN;
	if (!FUNC2("error", value))
		return MISSING_COMMIT_CHECK_ERROR;
	FUNC3(FUNC0("unrecognized setting %s for option "
		  "rebase.missingCommitsCheck. Ignoring."), value);
	return MISSING_COMMIT_CHECK_IGNORE;
}