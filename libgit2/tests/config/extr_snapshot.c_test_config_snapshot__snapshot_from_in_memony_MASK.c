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
typedef  int /*<<< orphan*/  git_config_backend ;

/* Variables and functions */
 int /*<<< orphan*/  cfg ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snapshot ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

void FUNC8(void)
{
	const char *configuration = "[section]\nkey = 1\n";
	git_config_backend *backend;
	int i;

	FUNC1(FUNC5(&cfg));
	FUNC1(FUNC3(&backend, configuration, FUNC7(configuration)));
	FUNC1(FUNC2(cfg, backend, 0, NULL, 0));

	FUNC1(FUNC6(&snapshot, cfg));
	FUNC1(FUNC4(&i, snapshot, "section.key"));
	FUNC0(i, 1);
}