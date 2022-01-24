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
 int /*<<< orphan*/  GITMODULES_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

int FUNC3(const char *key, const char *value)
{
	int ret;

	ret = FUNC1(GITMODULES_FILE, key, value);
	if (ret < 0)
		/* Maybe the user already did that, don't error out here */
		FUNC2(FUNC0("Could not update .gitmodules entry %s"), key);

	return ret;
}