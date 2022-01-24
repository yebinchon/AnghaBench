#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  map; int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_treebuilder ;
struct TYPE_11__ {int /*<<< orphan*/  attr; int /*<<< orphan*/  filename; scalar_t__ oid; } ;
typedef  TYPE_2__ git_tree_entry ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_filemode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  GIT_ERROR_TREE ; 
 TYPE_2__* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

int FUNC10(
	const git_tree_entry **entry_out,
	git_treebuilder *bld,
	const char *filename,
	const git_oid *id,
	git_filemode_t filemode)
{
	git_tree_entry *entry;
	int error;

	FUNC2(bld && id && filename);

	if ((error = FUNC3(bld->repo, filename, id, filemode)) < 0)
		return error;

	if ((entry = FUNC6(bld->map, filename)) != NULL) {
		FUNC5((git_oid *) entry->oid, id);
	} else {
		entry = FUNC1(filename, FUNC9(filename), id);
		FUNC0(entry);

		if ((error = FUNC7(bld->map, entry->filename, entry)) < 0) {
			FUNC8(entry);
			FUNC4(GIT_ERROR_TREE, "failed to insert %s", filename);
			return -1;
		}
	}

	entry->attr = filemode;

	if (entry_out)
		*entry_out = entry;

	return 0;
}