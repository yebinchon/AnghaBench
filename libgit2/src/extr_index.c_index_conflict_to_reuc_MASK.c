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
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_5__ {int mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(git_index *index, const char *path)
{
	const git_index_entry *conflict_entries[3];
	int ancestor_mode, our_mode, their_mode;
	git_oid const *ancestor_oid, *our_oid, *their_oid;
	int ret;

	if ((ret = FUNC0(&conflict_entries[0],
		&conflict_entries[1], &conflict_entries[2], index, path)) < 0)
		return ret;

	ancestor_mode = conflict_entries[0] == NULL ? 0 : conflict_entries[0]->mode;
	our_mode = conflict_entries[1] == NULL ? 0 : conflict_entries[1]->mode;
	their_mode = conflict_entries[2] == NULL ? 0 : conflict_entries[2]->mode;

	ancestor_oid = conflict_entries[0] == NULL ? NULL : &conflict_entries[0]->id;
	our_oid = conflict_entries[1] == NULL ? NULL : &conflict_entries[1]->id;
	their_oid = conflict_entries[2] == NULL ? NULL : &conflict_entries[2]->id;

	if ((ret = FUNC2(index, path, ancestor_mode, ancestor_oid,
		our_mode, our_oid, their_mode, their_oid)) >= 0)
		ret = FUNC1(index, path);

	return ret;
}