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
typedef  scalar_t__ timestamp_t ;
struct string_list {int nr; TYPE_1__* items; } ;
struct rerere_id {size_t variant; struct rerere_dir* collection; } ;
struct rerere_dir {size_t status_nr; scalar_t__* status; } ;
struct repository {int dummy; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct rerere_dir* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rerere_id*,scalar_t__,scalar_t__) ; 
 struct dirent* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct repository*,struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct string_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_lock ; 

void FUNC17(struct repository *r, struct string_list *rr)
{
	struct string_list to_remove = STRING_LIST_INIT_DUP;
	DIR *dir;
	struct dirent *e;
	int i;
	timestamp_t now = FUNC16(NULL);
	timestamp_t cutoff_noresolve = now - 15 * 86400;
	timestamp_t cutoff_resolve = now - 60 * 86400;

	if (FUNC13(r, rr, 0) < 0)
		return;

	FUNC5("gc.rerereresolved", &cutoff_resolve, now);
	FUNC5("gc.rerereunresolved", &cutoff_noresolve, now);
	FUNC4(git_default_config, NULL);
	dir = FUNC8(FUNC6("rr-cache"));
	if (!dir)
		FUNC2(FUNC0("unable to open rr-cache directory"));
	/* Collect stale conflict IDs ... */
	while ((e = FUNC10(dir))) {
		struct rerere_dir *rr_dir;
		struct rerere_id id;
		int now_empty;

		if (FUNC7(e->d_name))
			continue;
		rr_dir = FUNC3(e->d_name);
		if (!rr_dir)
			continue; /* or should we remove e->d_name? */

		now_empty = 1;
		for (id.variant = 0, id.collection = rr_dir;
		     id.variant < id.collection->status_nr;
		     id.variant++) {
			FUNC9(&id, cutoff_resolve, cutoff_noresolve);
			if (id.collection->status[id.variant])
				now_empty = 0;
		}
		if (now_empty)
			FUNC14(&to_remove, e->d_name);
	}
	FUNC1(dir);

	/* ... and then remove the empty directories */
	for (i = 0; i < to_remove.nr; i++)
		FUNC11(FUNC6("rr-cache/%s", to_remove.items[i].string));
	FUNC15(&to_remove, 0);
	FUNC12(&write_lock);
}