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
struct pathspec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RERERE_NOAUTOUPDATE ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*,struct string_list*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pathspec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct repository*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct string_list*) ; 
 int FUNC6 (struct repository*,struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct pathspec*) ; 
 int FUNC9 (struct string_list*,int) ; 

int FUNC10(struct repository *r, struct pathspec *pathspec)
{
	int i, fd;
	struct string_list conflict = STRING_LIST_INIT_DUP;
	struct string_list merge_rr = STRING_LIST_INIT_DUP;

	if (FUNC4(r) < 0)
		return FUNC1(FUNC0("index file corrupt"));

	fd = FUNC6(r, &merge_rr, RERERE_NOAUTOUPDATE);
	if (fd < 0)
		return 0;

	/*
	 * The paths may have been resolved (incorrectly);
	 * recover the original conflicted state and then
	 * find the conflicted paths.
	 */
	FUNC8(r->index, pathspec);
	FUNC2(r, &conflict);
	for (i = 0; i < conflict.nr; i++) {
		struct string_list_item *it = &conflict.items[i];
		if (!FUNC3(r->index, pathspec, it->string,
				    FUNC7(it->string), 0, NULL, 0))
			continue;
		FUNC5(r->index, it->string, &merge_rr);
	}
	return FUNC9(&merge_rr, fd);
}