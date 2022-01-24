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
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,char*) ; 

void FUNC8(void)
{
	const char *file_name  = "config-duplicate-header";
	const char *entry_name = "remote.origin.url";
	git_config *cfg;
	git_config_entry *entry;

	/* This config can occur after removing and re-adding the origin remote */
	const char *file_content =
		"[remote \"origin\"]\n"		\
		"[branch \"master\"]\n"		\
		"	remote = \"origin\"\n"	\
		"[remote \"origin\"]\n"		\
		"	url = \"foo\"\n";

	/* Write the test config and make sure the expected entry exists */
	FUNC1(file_name, file_content);
	FUNC2(FUNC6(&cfg, file_name));
	FUNC2(FUNC5(&entry, cfg, entry_name));

	/* Update that entry */
	FUNC2(FUNC7(cfg, entry_name, "newurl"));

	/* Reopen the file and make sure the entry was updated */
	FUNC3(entry);
	FUNC4(cfg);
	FUNC2(FUNC6(&cfg, file_name));
	FUNC2(FUNC5(&entry, cfg, entry_name));

	FUNC0("newurl", entry->value);

	/* Cleanup */
	FUNC3(entry);
	FUNC4(cfg);
}