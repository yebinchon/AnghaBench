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
typedef  int /*<<< orphan*/  git_transaction ;
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(void)
{
	git_config *cfg, *cfg2;
	git_config_entry *entry;
	git_transaction *tx;
	const char *filename = "locked-file";

	/* Open the config and lock it */
	FUNC2(filename, "[section]\n\tname = value\n");
	FUNC3(FUNC8(&cfg, filename));
	FUNC3(FUNC6(&entry, cfg, "section.name"));
	FUNC0("value", entry->value);
	FUNC4(entry);
	FUNC3(FUNC7(&tx, cfg));

	/* Change entries in the locked backend */
	FUNC3(FUNC9(cfg, "section.name", "other value"));
	FUNC3(FUNC9(cfg, "section2.name3", "more value"));

	/* We can see that the file we read from hasn't changed */
	FUNC3(FUNC8(&cfg2, filename));
	FUNC3(FUNC6(&entry, cfg2, "section.name"));
	FUNC0("value", entry->value);
	FUNC4(entry);
	FUNC1(GIT_ENOTFOUND, FUNC6(&entry, cfg2, "section2.name3"));
	FUNC5(cfg2);

	/* And we also get the old view when we read from the locked config */
	FUNC3(FUNC6(&entry, cfg, "section.name"));
	FUNC0("value", entry->value);
	FUNC4(entry);
	FUNC1(GIT_ENOTFOUND, FUNC6(&entry, cfg, "section2.name3"));

	FUNC3(FUNC10(tx));
	FUNC11(tx);

	/* Now that we've unlocked it, we should see both updates */
	FUNC3(FUNC6(&entry, cfg, "section.name"));
	FUNC0("other value", entry->value);
	FUNC4(entry);
	FUNC3(FUNC6(&entry, cfg, "section2.name3"));
	FUNC0("more value", entry->value);
	FUNC4(entry);

	FUNC5(cfg);

	/* We should also see the changes after reopening the config */
	FUNC3(FUNC8(&cfg, filename));
	FUNC3(FUNC6(&entry, cfg, "section.name"));
	FUNC0("other value", entry->value);
	FUNC4(entry);
	FUNC3(FUNC6(&entry, cfg, "section2.name3"));
	FUNC0("more value", entry->value);
	FUNC4(entry);

	FUNC5(cfg);
}