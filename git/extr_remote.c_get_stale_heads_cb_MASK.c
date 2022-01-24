#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {int nr; TYPE_1__* items; } ;
struct stale_heads_info {int /*<<< orphan*/  stale_refs_tail; int /*<<< orphan*/  ref_names; int /*<<< orphan*/  rs; } ;
struct refspec_item {char* dst; } ;
struct ref {int /*<<< orphan*/  new_oid; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int REF_ISSYMREF ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 struct ref* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct refspec_item*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct refspec_item*,struct string_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const char *refname, const struct object_id *oid,
			      int flags, void *cb_data)
{
	struct stale_heads_info *info = cb_data;
	struct string_list matches = STRING_LIST_INIT_DUP;
	struct refspec_item query;
	int i, stale = 1;
	FUNC1(&query, 0, sizeof(struct refspec_item));
	query.dst = (char *)refname;

	FUNC3(info->rs, &query, &matches);
	if (matches.nr == 0)
		goto clean_exit; /* No matches */

	/*
	 * If we did find a suitable refspec and it's not a symref and
	 * it's not in the list of refs that currently exist in that
	 * remote, we consider it to be stale. In order to deal with
	 * overlapping refspecs, we need to go over all of the
	 * matching refs.
	 */
	if (flags & REF_ISSYMREF)
		goto clean_exit;

	for (i = 0; stale && i < matches.nr; i++)
		if (FUNC5(info->ref_names, matches.items[i].string))
			stale = 0;

	if (stale) {
		struct ref *ref = FUNC0(refname, &info->stale_refs_tail);
		FUNC2(&ref->new_oid, oid);
	}

clean_exit:
	FUNC4(&matches, 0);
	return 0;
}