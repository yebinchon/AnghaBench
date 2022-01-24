#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct merge_index_entry {int member_0; char* member_1; char* member_3; int /*<<< orphan*/  path; int /*<<< orphan*/  oid_str; int /*<<< orphan*/  member_2; } ;
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_oid ;
struct TYPE_12__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_13__ {int /*<<< orphan*/  path; int /*<<< orphan*/  id; } ;
typedef  TYPE_4__ git_index_entry ;
typedef  int /*<<< orphan*/  expected ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITERATOR_INCLUDE_HASH ; 
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	git_iterator *iter;
	const git_index_entry *entry;
	git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_oid expected_id = {{0}};
	size_t i;

	struct merge_index_entry expected[] = {
		{ 0100644, "ffb36e513f5fdf8a6ba850a20142676a2ac4807d", 0, "asparagus.txt" },
		{ 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
		{ 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
		{ 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
		{ 0100644, "7c7e08f9559d9e1551b91e1cf68f1d0066109add", 0, "oyster.txt" },
		{ 0100644, "898d12687fb35be271c27c795a6b32c8b51da79e", 0, "veal.txt" },
	};

	g_repo = FUNC4("merge-recursive");

	/* do the iteration normally, ensure there are no hashes */
	FUNC3(FUNC6(&iter, g_repo, NULL, NULL, &iter_opts));

	for (i = 0; i < sizeof(expected) / sizeof(struct merge_index_entry); i++) {
		FUNC3(FUNC5(&entry, iter));

		FUNC1(&expected_id, &entry->id);
		FUNC2(expected[i].path, entry->path);
	}
	FUNC0(GIT_ITEROVER, FUNC5(&entry, iter));
	FUNC7(iter);

	/* do the iteration requesting hashes */
	iter_opts.flags |= GIT_ITERATOR_INCLUDE_HASH;
	FUNC3(FUNC6(&iter, g_repo, NULL, NULL, &iter_opts));

	for (i = 0; i < sizeof(expected) / sizeof(struct merge_index_entry); i++) {
		FUNC3(FUNC5(&entry, iter));

		FUNC3(FUNC8(&expected_id, expected[i].oid_str));
		FUNC1(&expected_id, &entry->id);
		FUNC2(expected[i].path, entry->path);
	}
	FUNC0(GIT_ITEROVER, FUNC5(&entry, iter));
	FUNC7(iter);
}