#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  new_entries; int /*<<< orphan*/ * old_entries; int /*<<< orphan*/  entry_cmp; int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ read_tree_data ;
struct TYPE_19__ {scalar_t__ attr; int /*<<< orphan*/  filename; } ;
typedef  TYPE_2__ git_tree_entry ;
struct TYPE_20__ {scalar_t__ mode; scalar_t__ flags_extended; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ git_index_entry ;
struct TYPE_21__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_4__ git_buf ;

/* Variables and functions */
 TYPE_4__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ FUNC11 (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(
	const char *root, const git_tree_entry *tentry, void *payload)
{
	read_tree_data *data = payload;
	git_index_entry *entry = NULL, *old_entry;
	git_buf path = GIT_BUF_INIT;
	size_t pos;

	if (FUNC5(tentry))
		return 0;

	if (FUNC2(&path, root, tentry->filename) < 0)
		return -1;

	if (FUNC11(&entry, FUNC0(data->index), path.ptr, NULL, false) < 0)
		return -1;

	entry->mode = tentry->attr;
	FUNC3(&entry->id, FUNC6(tentry));

	/* look for corresponding old entry and copy data to new entry */
	if (data->old_entries != NULL &&
		!FUNC13(
			&pos, data->old_entries, data->entry_cmp, path.ptr, 0, 0) &&
		(old_entry = FUNC7(data->old_entries, pos)) != NULL &&
		entry->mode == old_entry->mode &&
		FUNC4(&entry->id, &old_entry->id))
	{
		FUNC10(entry, old_entry);
		entry->flags_extended = 0;
	}

	FUNC9(entry, path.size);
	FUNC1(&path);

	if (FUNC8(data->new_entries, entry) < 0) {
		FUNC12(entry);
		return -1;
	}

	return 0;
}