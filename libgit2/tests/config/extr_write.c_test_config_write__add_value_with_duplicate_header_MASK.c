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
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	const char *file_name  = "config-duplicate-insert";
	const char *entry_name = "foo.c";
	const char *old_val    = "old";
	const char *new_val    = "new";
	const char *str;
	git_config *cfg, *snapshot;

	/* c = old should be replaced by c = new.
	 * The bug causes c = new to be inserted under the first 'foo' header.
	 */
	const char *file_content =
		"[foo]\n"   \
		"  a = b\n" \
		"[other]\n" \
		"  a = b\n" \
		"[foo]\n"   \
		"  c = old\n";

	/* Write the test config */
	FUNC1(file_name, file_content);
	FUNC2(FUNC5(&cfg, file_name));

	/* make sure the expected entry (foo.c) exists */
	FUNC2(FUNC7(&snapshot, cfg));
	FUNC2(FUNC4(&str, snapshot, entry_name));
	FUNC0(old_val, str);
	FUNC3(snapshot);

	/* Try setting foo.c to something else */
	FUNC2(FUNC6(cfg, entry_name, new_val));
	FUNC3(cfg);

	/* Reopen the file and make sure the new value was set */
	FUNC2(FUNC5(&cfg, file_name));
	FUNC2(FUNC7(&snapshot, cfg));
	FUNC2(FUNC4(&str, snapshot, entry_name));
	FUNC0(new_val, str);

	/* Cleanup */
	FUNC3(snapshot);
	FUNC3(cfg);
}