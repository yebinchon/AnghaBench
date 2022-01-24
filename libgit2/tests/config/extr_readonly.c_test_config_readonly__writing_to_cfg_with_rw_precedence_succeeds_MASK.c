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
struct TYPE_4__ {int readonly; } ;
typedef  TYPE_1__ git_config_backend ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_LOCAL ; 
 int /*<<< orphan*/  cfg ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(void)
{
	git_config_backend *backend;

	FUNC1(FUNC3(&backend, "global"));
	backend->readonly = 1;
	FUNC1(FUNC2(cfg, backend, GIT_CONFIG_LEVEL_GLOBAL, NULL, 0));

	FUNC1(FUNC3(&backend, "local"));
	FUNC1(FUNC2(cfg, backend, GIT_CONFIG_LEVEL_LOCAL, NULL, 0));

	FUNC1(FUNC4(cfg, "foo.bar", "baz"));

	FUNC0(FUNC5("local"));
	FUNC0(!FUNC5("global"));
	FUNC1(FUNC6("local"));
}