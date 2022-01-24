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
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  ident_use_config_only ; 
 int FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

int FUNC3(const char *var, const char *value, void *data)
{
	if (!FUNC2(var, "user.useconfigonly")) {
		ident_use_config_only = FUNC0(var, value);
		return 0;
	}

	return FUNC1(var, value);
}