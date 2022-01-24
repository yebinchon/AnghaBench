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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  cfg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,char*) ; 

__attribute__((used)) static void FUNC6(const char *name)
{
	git_buf buf = GIT_BUF_INIT;

	FUNC0(FUNC3(&buf, cfg, name),
		GIT_EINVALIDSPEC);
	FUNC0(FUNC5(cfg, name, "42"),
		GIT_EINVALIDSPEC);
	FUNC0(FUNC1(cfg, name),
		GIT_EINVALIDSPEC);
	FUNC0(FUNC2(cfg, name, "*", NULL, NULL),
		GIT_EINVALIDSPEC);
	FUNC0(FUNC4(cfg, name, "*", "42"),
		GIT_EINVALIDSPEC);
}