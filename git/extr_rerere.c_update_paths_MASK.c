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
struct string_list_item {int /*<<< orphan*/  string; } ;
struct string_list {int nr; struct string_list_item* items; } ;
struct repository {int /*<<< orphan*/  index; } ;
struct lock_file {int dummy; } ;

/* Variables and functions */
 int COMMIT_LOCK ; 
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct lock_file LOCK_INIT ; 
 int SKIP_IF_UNCHANGED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct repository*,struct lock_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct lock_file*,int) ; 

__attribute__((used)) static void FUNC7(struct repository *r, struct string_list *update)
{
	struct lock_file index_lock = LOCK_INIT;
	int i;

	FUNC5(r, &index_lock, LOCK_DIE_ON_ERROR);

	for (i = 0; i < update->nr; i++) {
		struct string_list_item *item = &update->items[i];
		if (FUNC1(r->index, item->string, 0))
			FUNC3(128);
		FUNC4(stderr, FUNC0("Staged '%s' using previous resolution."),
			item->string);
	}

	if (FUNC6(r->index, &index_lock,
			       COMMIT_LOCK | SKIP_IF_UNCHANGED))
		FUNC2(FUNC0("unable to write new index file"));
}