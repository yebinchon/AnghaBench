#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bare; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ g_options ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void)
{
	/* Clone should clean up the mess if the URL isn't a git repository */
	FUNC1(FUNC2(&g_repo, "not_a_repo", "./foo", &g_options));
	FUNC0(!FUNC3("./foo"));
	g_options.bare = true;
	FUNC1(FUNC2(&g_repo, "not_a_repo", "./foo", &g_options));
	FUNC0(!FUNC3("./foo"));

	FUNC1(FUNC2(&g_repo, "git://example.com:asdf", "./foo", &g_options));
	FUNC1(FUNC2(&g_repo, "https://example.com:asdf/foo", "./foo", &g_options));
	FUNC1(FUNC2(&g_repo, "git://github.com/git://github.com/foo/bar.git.git",
				"./foo", &g_options));
	FUNC1(FUNC2(&g_repo, "arrbee:my/bad:password@github.com:1111/strange:words.git",
				"./foo", &g_options));
}