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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,char*) ; 

void FUNC6(void)
{
    int ignored;

    g_repo = FUNC3("empty_standard_repo");

    FUNC1("empty_standard_repo/.gitignore",
              "code/projects/**/packages/*\n"
              "!code/projects/**/packages/repositories.config");

    FUNC2(FUNC4("empty_standard_repo/code/projects/foo/bar/packages", 0777));
    FUNC1("empty_standard_repo/code/projects/foo/bar/packages/repositories.config", "");

    FUNC2(FUNC5(&ignored, g_repo, "code/projects/foo/bar/packages/repositories.config"));
    FUNC0(0, ignored);
}