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
 scalar_t__ FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 () ; 

int FUNC3(const char *dir)
{
	char *cwd;
	int rc;

	if (!dir)
		return 0;

	cwd = FUNC2();
	rc = (FUNC0(cwd, dir) >= 0);
	FUNC1(cwd);
	return rc;
}