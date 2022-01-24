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
 int /*<<< orphan*/  FUNC0 (char const*,char const**) ; 
 int FUNC1 (char const*,char const*) ; 
 scalar_t__ need_shared_repository_from_config ; 
 int the_shared_repository ; 

int FUNC2(void)
{
	if (need_shared_repository_from_config) {
		const char *var = "core.sharedrepository";
		const char *value;
		if (!FUNC0(var, &value))
			the_shared_repository = FUNC1(var, value);
		need_shared_repository_from_config = 0;
	}
	return the_shared_repository;
}