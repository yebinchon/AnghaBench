#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct checkout_index_entry {int stage; int /*<<< orphan*/  path; int /*<<< orphan*/  oid_str; int /*<<< orphan*/  mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  path; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  TEST_REPO_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct checkout_index_entry *entries, size_t entries_len)
{
	git_buf path = GIT_BUF_INIT;
	size_t i;

	for (i = 0; i < entries_len; i++) {
		FUNC4(&path, TEST_REPO_PATH, entries[i].path);

		if (entries[i].stage == 3 && (i == 0 || FUNC10(entries[i-1].path, entries[i].path) != 0 || entries[i-1].stage != 2))
			FUNC9(FUNC2(&path));

		FUNC1(FUNC6(g_index, entries[i].path));
	}

	for (i = 0; i < entries_len; i++) {
		git_index_entry entry;

		FUNC8(&entry, 0x0, sizeof(git_index_entry));

		entry.mode = entries[i].mode;
		FUNC0(&entry, entries[i].stage);
		FUNC7(&entry.id, entries[i].oid_str);
		entry.path = entries[i].path;

		FUNC1(FUNC5(g_index, &entry));
	}

	FUNC3(&path);
}