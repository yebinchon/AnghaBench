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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_REPOSITORY_INIT_SHARED_ALL ; 
 int /*<<< orphan*/  GIT_REPOSITORY_INIT_SHARED_GROUP ; 
 int /*<<< orphan*/  GIT_REPOSITORY_INIT_SHARED_UMASK ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 long FUNC1 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static uint32_t FUNC3(const char *shared)
{
	if (!FUNC0(shared, "false") || !FUNC0(shared, "umask"))
		return GIT_REPOSITORY_INIT_SHARED_UMASK;

	else if (!FUNC0(shared, "true") || !FUNC0(shared, "group"))
		return GIT_REPOSITORY_INIT_SHARED_GROUP;

	else if (!FUNC0(shared, "all") || !FUNC0(shared, "world") ||
			 !FUNC0(shared, "everybody"))
		return GIT_REPOSITORY_INIT_SHARED_ALL;

	else if (shared[0] == '0') {
		long val;
		char *end = NULL;
		val = FUNC1(shared + 1, &end, 8);
		if (end == shared + 1 || *end != 0)
			FUNC2("invalid octal value for --shared", shared);
		return (uint32_t)val;
	}

	else
		FUNC2("unknown value for --shared", shared);

	return 0;
}