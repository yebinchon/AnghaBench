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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void FUNC11(void)
{
	git_config *cfg;
	git_config_entry *entry;
	git_transaction *transaction;

	FUNC10("home/.gitconfig"); /* No global config */

	FUNC1(FUNC6(&cfg));
	FUNC1(FUNC5(&transaction, cfg));
	FUNC1(FUNC7(cfg, "assertion.fail", "boom"));
	FUNC1(FUNC8(transaction));
	FUNC9(transaction);

	/* cfg is updated */
	FUNC1(FUNC4(&entry, cfg, "assertion.fail"));
	FUNC0("boom", entry->value);

	FUNC2(entry);
	FUNC3(cfg);

	/* We can reread the new value from the global config */
	FUNC1(FUNC6(&cfg));
	FUNC1(FUNC4(&entry, cfg, "assertion.fail"));
	FUNC0("boom", entry->value);

	FUNC2(entry);
	FUNC3(cfg);
}