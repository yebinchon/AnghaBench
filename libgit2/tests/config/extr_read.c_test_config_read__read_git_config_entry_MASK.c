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
struct TYPE_4__ {int /*<<< orphan*/  level; int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 

void FUNC9(void)
{
	git_config *cfg;
	git_config_entry *entry;

	FUNC3(FUNC8(&cfg));
	FUNC3(FUNC4(cfg, FUNC2("config/config9"),
		GIT_CONFIG_LEVEL_SYSTEM, NULL, 0));

	FUNC3(FUNC7(&entry, cfg, "core.dummy2"));
	FUNC1("core.dummy2", entry->name);
	FUNC1("42", entry->value);
	FUNC0(GIT_CONFIG_LEVEL_SYSTEM, entry->level);

	FUNC5(entry);
	FUNC6(cfg);
}