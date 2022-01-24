#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct string_list {int nr; TYPE_3__* items; } ;
struct rerere_id {int dummy; } ;
struct repository {int /*<<< orphan*/  index; } ;
struct TYPE_6__ {char* string; } ;
struct TYPE_5__ {struct rerere_id* util; } ;
struct TYPE_4__ {int /*<<< orphan*/  util; } ;

/* Variables and functions */
 int GIT_MAX_RAWSZ ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,struct string_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*,struct string_list*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct rerere_id* FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rerere_id*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct string_list*,char const*) ; 
 TYPE_2__* FUNC8 (struct string_list*,char const*) ; 
 TYPE_1__* FUNC9 (struct string_list*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct string_list*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct repository*,struct string_list*) ; 
 int FUNC12 (struct string_list*,int) ; 

__attribute__((used)) static int FUNC13(struct repository *r,
			   struct string_list *rr, int fd)
{
	struct string_list conflict = STRING_LIST_INIT_DUP;
	struct string_list update = STRING_LIST_INIT_DUP;
	int i;

	FUNC1(r, &conflict);

	/*
	 * MERGE_RR records paths with conflicts immediately after
	 * merge failed.  Some of the conflicted paths might have been
	 * hand resolved in the working tree since then, but the
	 * initial run would catch all and register their preimages.
	 */
	for (i = 0; i < conflict.nr; i++) {
		struct rerere_id *id;
		unsigned char hash[GIT_MAX_RAWSZ];
		const char *path = conflict.items[i].string;
		int ret;

		/*
		 * Ask handle_file() to scan and assign a
		 * conflict ID.  No need to write anything out
		 * yet.
		 */
		ret = FUNC2(r->index, path, hash, NULL);
		if (ret != 0 && FUNC7(rr, path)) {
			FUNC5(FUNC9(rr, path)->util);
			FUNC10(rr, path, 1);
		}
		if (ret < 1)
			continue;

		id = FUNC4(hash);
		FUNC8(rr, path)->util = id;

		/* Ensure that the directory exists. */
		FUNC3(FUNC6(id, NULL));
	}

	for (i = 0; i < rr->nr; i++)
		FUNC0(r->index, &rr->items[i], &update);

	if (update.nr)
		FUNC11(r, &update);

	return FUNC12(rr, fd);
}