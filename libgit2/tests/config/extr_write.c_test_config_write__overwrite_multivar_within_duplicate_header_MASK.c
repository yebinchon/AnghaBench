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
typedef  int /*<<< orphan*/  git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,char*,char*) ; 
 int /*<<< orphan*/  multivar_cb ; 

void FUNC9(void)
{
	const char *file_name  = "config-duplicate-header";
	const char *entry_name = "remote.origin.url";
	git_config *cfg;
	git_config_entry *entry;
	int n = 0;

	/* This config can occur after removing and re-adding the origin remote */
	const char *file_content =
		"[remote \"origin\"]\n"		\
		"	url = \"bar\"\n"		\
		"[branch \"master\"]\n"		\
		"	remote = \"origin\"\n"	\
		"[remote \"origin\"]\n"		\
		"	url = \"foo\"\n";

	/* Write the test config and make sure the expected entry exists */
	FUNC1(file_name, file_content);
	FUNC2(FUNC7(&cfg, file_name));
	FUNC2(FUNC5(&entry, cfg, entry_name));

	/* Update that entry */
	FUNC2(FUNC8(cfg, entry_name, ".*", "newurl"));
	FUNC3(entry);
	FUNC4(cfg);

	/* Reopen the file and make sure the entry was updated */
	FUNC2(FUNC7(&cfg, file_name));
	FUNC2(FUNC6(cfg, entry_name, NULL, multivar_cb, &n));
	FUNC0(2, n);

	/* Cleanup */
	FUNC4(cfg);
}