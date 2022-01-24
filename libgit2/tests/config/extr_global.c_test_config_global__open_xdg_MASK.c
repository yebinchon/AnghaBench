#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_4__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_XDG ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,char const*) ; 

void FUNC10(void)
{
	git_config *cfg, *xdg, *selected;
	const char *str = "teststring";
	const char *key = "this.variable";
	git_buf buf = {0};

	FUNC1("xdg/git/config", "# XDG config\n[core]\n  test = 1\n");

	FUNC2(FUNC6(&cfg));
	FUNC2(FUNC8(&xdg, cfg, GIT_CONFIG_LEVEL_XDG));
	FUNC2(FUNC7(&selected, cfg));

	FUNC2(FUNC9(xdg, key, str));
	FUNC2(FUNC5(&buf, selected, key));
	FUNC0(str, buf.ptr);

	FUNC3(&buf);
	FUNC4(selected);
	FUNC4(xdg);
	FUNC4(cfg);
}