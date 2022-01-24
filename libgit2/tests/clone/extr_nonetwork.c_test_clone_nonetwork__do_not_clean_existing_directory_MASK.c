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
 int /*<<< orphan*/  GIT_DIR_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ g_options ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	/* Clone should not remove the directory if it already exists, but
	 * Should clean up entries it creates. */
	FUNC4("./foo", GIT_DIR_MODE);
	FUNC1(FUNC2(&g_repo, "not_a_repo", "./foo", &g_options));
	FUNC0(FUNC3("./foo"));

	/* Try again with a bare repository. */
	g_options.bare = true;
	FUNC1(FUNC2(&g_repo, "not_a_repo", "./foo", &g_options));
	FUNC0(FUNC3("./foo"));
}