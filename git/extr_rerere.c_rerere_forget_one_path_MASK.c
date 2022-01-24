#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct string_list_item {struct rerere_id* util; } ;
struct string_list {int dummy; } ;
struct rerere_id {scalar_t__ variant; TYPE_1__* collection; } ;
struct index_state {int dummy; } ;
struct TYPE_8__ {struct rerere_id* ptr; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ mmfile_t ;
struct TYPE_9__ {struct rerere_id* ptr; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_3__ mmbuffer_t ;
struct TYPE_7__ {scalar_t__ status_nr; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int GIT_MAX_RAWSZ ; 
 char* FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct rerere_id*) ; 
 int /*<<< orphan*/  FUNC6 (struct string_list_item*) ; 
 int FUNC7 (struct index_state*,char const*,unsigned char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct rerere_id*) ; 
 struct rerere_id* FUNC9 (unsigned char*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,char*) ; 
 char* FUNC11 (struct rerere_id*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 struct string_list_item* FUNC12 (struct string_list*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct index_state*,struct rerere_id*,char const*,TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC14 (char const*) ; 

__attribute__((used)) static int FUNC15(struct index_state *istate,
				  const char *path,
				  struct string_list *rr)
{
	const char *filename;
	struct rerere_id *id;
	unsigned char hash[GIT_MAX_RAWSZ];
	int ret;
	struct string_list_item *item;

	/*
	 * Recreate the original conflict from the stages in the
	 * index and compute the conflict ID
	 */
	ret = FUNC7(istate, path, hash, NULL);
	if (ret < 1)
		return FUNC1(FUNC0("could not parse conflict hunks in '%s'"), path);

	/* Nuke the recorded resolution for the conflict */
	id = FUNC9(hash);

	for (id->variant = 0;
	     id->variant < id->collection->status_nr;
	     id->variant++) {
		mmfile_t cur = { NULL, 0 };
		mmbuffer_t result = {NULL, 0};
		int cleanly_resolved;

		if (!FUNC8(id))
			continue;

		FUNC7(istate, path, hash, FUNC11(id, "thisimage"));
		if (FUNC10(&cur, FUNC11(id, "thisimage"))) {
			FUNC5(cur.ptr);
			FUNC1(FUNC0("failed to update conflicted state in '%s'"), path);
			goto fail_exit;
		}
		cleanly_resolved = !FUNC13(istate, id, path, &cur, &result);
		FUNC5(result.ptr);
		FUNC5(cur.ptr);
		if (cleanly_resolved)
			break;
	}

	if (id->collection->status_nr <= id->variant) {
		FUNC1(FUNC0("no remembered resolution for '%s'"), path);
		goto fail_exit;
	}

	filename = FUNC11(id, "postimage");
	if (FUNC14(filename)) {
		if (errno == ENOENT)
			FUNC1(FUNC0("no remembered resolution for '%s'"), path);
		else
			FUNC2(FUNC0("cannot unlink '%s'"), filename);
		goto fail_exit;
	}

	/*
	 * Update the preimage so that the user can resolve the
	 * conflict in the working tree, run us again to record
	 * the postimage.
	 */
	FUNC7(istate, path, hash, FUNC11(id, "preimage"));
	FUNC4(stderr, FUNC0("Updated preimage for '%s'"), path);

	/*
	 * And remember that we can record resolution for this
	 * conflict when the user is done.
	 */
	item = FUNC12(rr, path);
	FUNC6(item);
	item->util = id;
	FUNC3(stderr, FUNC0("Forgot resolution for '%s'\n"), path);
	return 0;

fail_exit:
	FUNC5(id);
	return -1;
}