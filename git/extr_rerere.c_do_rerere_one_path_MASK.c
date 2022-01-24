#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct string_list_item {char* string; struct rerere_id* util; } ;
struct string_list {int dummy; } ;
struct rerere_id {int variant; struct rerere_dir* collection; } ;
struct rerere_dir {int* status; int status_nr; } ;
struct index_state {int dummy; } ;

/* Variables and functions */
 int RR_HAS_POSTIMAGE ; 
 int RR_HAS_PREIMAGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rerere_id*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list_item*) ; 
 int /*<<< orphan*/  FUNC6 (struct index_state*,char const*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (struct index_state*,struct rerere_id*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct rerere_id*) ; 
 scalar_t__ rerere_autoupdate ; 
 char* FUNC9 (struct rerere_id*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (struct string_list*,char const*) ; 
 scalar_t__ FUNC11 (char const*) ; 

__attribute__((used)) static void FUNC12(struct index_state *istate,
			       struct string_list_item *rr_item,
			       struct string_list *update)
{
	const char *path = rr_item->string;
	struct rerere_id *id = rr_item->util;
	struct rerere_dir *rr_dir = id->collection;
	int variant;

	variant = id->variant;

	/* Has the user resolved it already? */
	if (variant >= 0) {
		if (!FUNC6(istate, path, NULL, NULL)) {
			FUNC2(FUNC9(id, "postimage"), path, 0666);
			id->collection->status[variant] |= RR_HAS_POSTIMAGE;
			FUNC4(stderr, FUNC0("Recorded resolution for '%s'."), path);
			FUNC5(rr_item);
			rr_item->util = NULL;
			return;
		}
		/*
		 * There may be other variants that can cleanly
		 * replay.  Try them and update the variant number for
		 * this one.
		 */
	}

	/* Does any existing resolution apply cleanly? */
	for (variant = 0; variant < rr_dir->status_nr; variant++) {
		const int both = RR_HAS_PREIMAGE | RR_HAS_POSTIMAGE;
		struct rerere_id vid = *id;

		if ((rr_dir->status[variant] & both) != both)
			continue;

		vid.variant = variant;
		if (FUNC7(istate, &vid, path))
			continue; /* failed to replay */

		/*
		 * If there already is a different variant that applies
		 * cleanly, there is no point maintaining our own variant.
		 */
		if (0 <= id->variant && id->variant != variant)
			FUNC8(id);

		if (rerere_autoupdate)
			FUNC10(update, path);
		else
			FUNC4(stderr,
				   FUNC0("Resolved '%s' using previous resolution."),
				   path);
		FUNC5(rr_item);
		rr_item->util = NULL;
		return;
	}

	/* None of the existing one applies; we need a new variant */
	FUNC1(id);

	variant = id->variant;
	FUNC6(istate, path, NULL, FUNC9(id, "preimage"));
	if (id->collection->status[variant] & RR_HAS_POSTIMAGE) {
		const char *path = FUNC9(id, "postimage");
		if (FUNC11(path))
			FUNC3(FUNC0("cannot unlink stray '%s'"), path);
		id->collection->status[variant] &= ~RR_HAS_POSTIMAGE;
	}
	id->collection->status[variant] |= RR_HAS_PREIMAGE;
	FUNC4(stderr, FUNC0("Recorded preimage for '%s'"), path);
}