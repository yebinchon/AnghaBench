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
typedef  int /*<<< orphan*/  git_pool ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char const*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static char *FUNC3(git_pool *pool, const char *prefix)
{
	size_t len = FUNC2(prefix);

	/* append '/' at end if needed */
	if (len > 0 && prefix[len - 1] != '/')
		return FUNC0(pool, prefix, "/");
	else
		return FUNC1(pool, prefix, len + 1);
}