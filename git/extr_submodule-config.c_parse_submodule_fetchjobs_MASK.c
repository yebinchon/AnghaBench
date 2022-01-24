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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char const*) ; 

int FUNC3(const char *var, const char *value)
{
	int fetchjobs = FUNC2(var, value);
	if (fetchjobs < 0)
		FUNC1(FUNC0("negative values not allowed for submodule.fetchjobs"));
	return fetchjobs;
}