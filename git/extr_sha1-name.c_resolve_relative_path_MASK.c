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
struct repository {int dummy; } ;
struct TYPE_2__ {scalar_t__ prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 TYPE_1__* startup_info ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct repository* the_repository ; 

__attribute__((used)) static char *FUNC5(struct repository *r, const char *rel)
{
	if (!FUNC3(rel, "./") && !FUNC3(rel, "../"))
		return NULL;

	if (r != the_repository || !FUNC1())
		FUNC0("relative path syntax can't be used outside working tree.");

	/* die() inside prefix_path() if resolved path is outside worktree */
	return FUNC2(startup_info->prefix,
			   startup_info->prefix ? FUNC4(startup_info->prefix) : 0,
			   rel);
}