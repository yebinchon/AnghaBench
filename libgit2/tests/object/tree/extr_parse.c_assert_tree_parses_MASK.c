#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t attr; int /*<<< orphan*/  oid; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ git_tree_entry ;
struct TYPE_10__ {int /*<<< orphan*/  object; } ;
typedef  TYPE_2__ git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_11__ {int /*<<< orphan*/  attr; int /*<<< orphan*/  filename; int /*<<< orphan*/  oid; } ;
typedef  TYPE_3__ expected_entry ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 size_t FUNC10 (char const*) ; 

__attribute__((used)) static void FUNC11(const char *data, size_t datalen,
	expected_entry *expected_entries, size_t expected_nentries)
{
	git_tree *tree;
	size_t n;

	if (!datalen)
		datalen = FUNC10(data);
	FUNC4(FUNC5((git_object **) &tree, data, datalen, GIT_OBJECT_TREE));

	FUNC1(FUNC9(tree), expected_nentries);

	for (n = 0; n < expected_nentries; n++) {
		expected_entry *expected = expected_entries + n;
		const git_tree_entry *entry;
		git_oid oid;

		FUNC4(FUNC7(&oid, expected->oid));

		FUNC0(entry = FUNC8(tree, expected->filename));
		FUNC3(expected->filename, entry->filename);
		FUNC1(expected->attr, entry->attr);
		FUNC2(&oid, entry->oid);
	}

	FUNC6(&tree->object);
}