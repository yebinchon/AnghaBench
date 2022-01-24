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
typedef  int /*<<< orphan*/  git_config_iterator ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_SYSTEM ; 
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int FUNC9 (TYPE_1__**,int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	const char *keys[] = {
		"core.dummy2",
		"core.verylong",
		"core.dummy",
		"remote.ab.url",
		"remote.abba.url",
		"core.dummy2",
		"core.global"
	};
	git_config *cfg;
	git_config_iterator *iter;
	git_config_entry *entry;
	int count, ret;

	FUNC3(FUNC8(&cfg));
	FUNC3(FUNC4(cfg, FUNC2("config/config9"),
		GIT_CONFIG_LEVEL_SYSTEM, NULL, 0));
	FUNC3(FUNC4(cfg, FUNC2("config/config15"),
		GIT_CONFIG_LEVEL_GLOBAL, NULL, 0));

	count = 0;
	FUNC3(FUNC7(&iter, cfg));

	while ((ret = FUNC9(&entry, iter)) == 0) {
		FUNC1(entry->name, keys[count]);
		count++;
	}

	FUNC6(iter);
	FUNC0(GIT_ITEROVER, ret);
	FUNC0(7, count);

	count = 3;
	FUNC3(FUNC7(&iter, cfg));

	FUNC6(iter);
	FUNC5(cfg);
}