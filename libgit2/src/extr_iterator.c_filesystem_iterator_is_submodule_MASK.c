#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ attr; } ;
typedef  TYPE_2__ git_tree_entry ;
struct TYPE_11__ {scalar_t__ mode; } ;
typedef  TYPE_3__ git_index_entry ;
struct TYPE_9__ {int /*<<< orphan*/  entry_srch; scalar_t__ index; } ;
struct TYPE_12__ {int /*<<< orphan*/  index_snapshot; TYPE_1__ base; scalar_t__ tree; } ;
typedef  TYPE_4__ filesystem_iterator ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 scalar_t__ GIT_FILEMODE_COMMIT ; 
 int FUNC0 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__**,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC4(
	bool *out, filesystem_iterator *iter, const char *path, size_t path_len)
{
	bool is_submodule = false;
	int error;

	*out = false;

	/* first see if this path is a submodule in HEAD */
	if (iter->tree) {
		git_tree_entry *entry;

		error = FUNC1(&entry, iter->tree, path);

		if (error < 0 && error != GIT_ENOTFOUND)
			return error;

		if (!error) {
			is_submodule = (entry->attr == GIT_FILEMODE_COMMIT);
			FUNC2(entry);
		}
	}

	if (!is_submodule && iter->base.index) {
		size_t pos;

		error = FUNC0(&pos,
			&iter->index_snapshot, iter->base.entry_srch, path, path_len, 0);

		if (error < 0 && error != GIT_ENOTFOUND)
			return error;

		if (!error) {
			git_index_entry *e = FUNC3(&iter->index_snapshot, pos);
			is_submodule = (e->mode == GIT_FILEMODE_COMMIT);
		}
	}

	*out = is_submodule;
	return 0;
}