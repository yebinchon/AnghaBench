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
struct string_list_item {struct ref* util; } ;
struct string_list {int /*<<< orphan*/  nr; } ;
struct refspec_item {int /*<<< orphan*/  force; scalar_t__ matching; } ;
struct refspec {int /*<<< orphan*/  nr; } ;
struct ref {scalar_t__ peer_ref; struct ref* next; int /*<<< orphan*/  force; int /*<<< orphan*/  name; int /*<<< orphan*/  new_oid; } ;
struct TYPE_2__ {struct ref* util; } ;

/* Variables and functions */
 int /*<<< orphan*/  FROM_DST ; 
 int /*<<< orphan*/  FROM_SRC ; 
 int MATCH_REFS_ALL ; 
 int MATCH_REFS_FOLLOW_TAGS ; 
 int MATCH_REFS_MIRROR ; 
 int MATCH_REFS_PRUNE ; 
 struct string_list STRING_LIST_INIT_NODUP ; 
 int /*<<< orphan*/  FUNC0 (struct ref*,struct ref**,struct ref***) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct ref*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (struct refspec*,struct ref*,int,int /*<<< orphan*/ ,struct refspec_item const**) ; 
 struct ref* FUNC5 (char*,struct ref***) ; 
 int FUNC6 (struct ref*,struct ref*,struct ref***,struct refspec*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct string_list*,struct ref*) ; 
 int /*<<< orphan*/  FUNC9 (struct refspec*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct string_list*,char*) ; 
 TYPE_1__* FUNC12 (struct string_list*,int /*<<< orphan*/ ) ; 
 struct string_list_item* FUNC13 (struct string_list*,char*) ; 
 struct ref** FUNC14 (struct ref**) ; 

int FUNC15(struct ref *src, struct ref **dst,
		    struct refspec *rs, int flags)
{
	int send_all = flags & MATCH_REFS_ALL;
	int send_mirror = flags & MATCH_REFS_MIRROR;
	int send_prune = flags & MATCH_REFS_PRUNE;
	int errs;
	struct ref *ref, **dst_tail = FUNC14(dst);
	struct string_list dst_ref_index = STRING_LIST_INIT_NODUP;

	/* If no refspec is provided, use the default ":" */
	if (!rs->nr)
		FUNC9(rs, ":");

	errs = FUNC6(src, *dst, &dst_tail, rs);

	/* pick the remainder */
	for (ref = src; ref; ref = ref->next) {
		struct string_list_item *dst_item;
		struct ref *dst_peer;
		const struct refspec_item *pat = NULL;
		char *dst_name;

		dst_name = FUNC4(rs, ref, send_mirror, FROM_SRC, &pat);
		if (!dst_name)
			continue;

		if (!dst_ref_index.nr)
			FUNC8(&dst_ref_index, *dst);

		dst_item = FUNC13(&dst_ref_index, dst_name);
		dst_peer = dst_item ? dst_item->util : NULL;
		if (dst_peer) {
			if (dst_peer->peer_ref)
				/* We're already sending something to this ref. */
				goto free_name;
		} else {
			if (pat->matching && !(send_all || send_mirror))
				/*
				 * Remote doesn't have it, and we have no
				 * explicit pattern, and we don't have
				 * --all or --mirror.
				 */
				goto free_name;

			/* Create a new one and link it */
			dst_peer = FUNC5(dst_name, &dst_tail);
			FUNC7(&dst_peer->new_oid, &ref->new_oid);
			FUNC12(&dst_ref_index,
				dst_peer->name)->util = dst_peer;
		}
		dst_peer->peer_ref = FUNC2(ref);
		dst_peer->force = pat->force;
	free_name:
		FUNC3(dst_name);
	}

	FUNC10(&dst_ref_index, 0);

	if (flags & MATCH_REFS_FOLLOW_TAGS)
		FUNC0(src, dst, &dst_tail);

	if (send_prune) {
		struct string_list src_ref_index = STRING_LIST_INIT_NODUP;
		/* check for missing refs on the remote */
		for (ref = *dst; ref; ref = ref->next) {
			char *src_name;

			if (ref->peer_ref)
				/* We're already sending something to this ref. */
				continue;

			src_name = FUNC4(rs, ref, send_mirror, FROM_DST, NULL);
			if (src_name) {
				if (!src_ref_index.nr)
					FUNC8(&src_ref_index, src);
				if (!FUNC11(&src_ref_index,
					    src_name))
					ref->peer_ref = FUNC1();
				FUNC3(src_name);
			}
		}
		FUNC10(&src_ref_index, 0);
	}

	if (errs)
		return -1;
	return 0;
}