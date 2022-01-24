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
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct unpack_trees_options {scalar_t__ clone; scalar_t__ update; int /*<<< orphan*/  dry_run; struct index_state result; } ;
struct progress {int dummy; } ;
struct oid_array {scalar_t__ nr; int /*<<< orphan*/  oid; } ;
struct checkout {int force; int quiet; int refresh_cache; struct index_state* istate; } ;
struct cache_entry {int ce_flags; int /*<<< orphan*/  name; int /*<<< orphan*/  oid; int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int CE_UPDATE ; 
 int CE_WT_REMOVE ; 
 struct checkout CHECKOUT_INIT ; 
 int /*<<< orphan*/  GIT_ATTR_CHECKIN ; 
 int /*<<< orphan*/  GIT_ATTR_CHECKOUT ; 
 int /*<<< orphan*/  OBJECT_INFO_FOR_PREFETCH ; 
 struct oid_array OID_ARRAY_INIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cache_entry*,struct checkout*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct progress*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct checkout*) ; 
 int FUNC5 (struct checkout*,int /*<<< orphan*/ *) ; 
 struct progress* FUNC6 (struct unpack_trees_options*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct index_state*,struct checkout*) ; 
 int /*<<< orphan*/  FUNC10 (struct oid_array*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct oid_array*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC17 (struct checkout*,struct index_state*) ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct progress**) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (struct cache_entry const*) ; 

__attribute__((used)) static int FUNC23(struct unpack_trees_options *o)
{
	unsigned cnt = 0;
	int errs = 0;
	struct progress *progress;
	struct index_state *index = &o->result;
	struct checkout state = CHECKOUT_INIT;
	int i;

	FUNC20();
	state.force = 1;
	state.quiet = 1;
	state.refresh_cache = 1;
	state.istate = index;

	if (o->clone)
		FUNC17(&state, index);

	progress = FUNC6(o);

	if (o->update)
		FUNC7(GIT_ATTR_CHECKOUT);

	if (FUNC18() && o->update && !o->dry_run)
		FUNC9(index, NULL);

	for (i = 0; i < index->cache_nr; i++) {
		const struct cache_entry *ce = index->cache[i];

		if (ce->ce_flags & CE_WT_REMOVE) {
			FUNC3(progress, ++cnt);
			if (o->update && !o->dry_run)
				FUNC22(ce);
		}
	}
	FUNC14(index, 0);
	FUNC15();

	if (FUNC18() && o->update && !o->dry_run)
		FUNC9(index, &state);

	FUNC4(&state);
	if (FUNC8() && o->update && !o->dry_run) {
		/*
		 * Prefetch the objects that are to be checked out in the loop
		 * below.
		 */
		struct oid_array to_fetch = OID_ARRAY_INIT;
		for (i = 0; i < index->cache_nr; i++) {
			struct cache_entry *ce = index->cache[i];

			if (!(ce->ce_flags & CE_UPDATE) ||
			    FUNC1(ce->ce_mode))
				continue;
			if (!FUNC12(the_repository, &ce->oid,
						      NULL,
						      OBJECT_INFO_FOR_PREFETCH))
				continue;
			FUNC10(&to_fetch, &ce->oid);
		}
		if (to_fetch.nr)
			FUNC13(the_repository,
						   to_fetch.oid, to_fetch.nr);
		FUNC11(&to_fetch);
	}
	for (i = 0; i < index->cache_nr; i++) {
		struct cache_entry *ce = index->cache[i];

		if (ce->ce_flags & CE_UPDATE) {
			if (ce->ce_flags & CE_WT_REMOVE)
				FUNC0("both update and delete flags are set on %s",
				    ce->name);
			FUNC3(progress, ++cnt);
			ce->ce_flags &= ~CE_UPDATE;
			if (o->update && !o->dry_run) {
				errs |= FUNC2(ce, &state, NULL, NULL);
			}
		}
	}
	FUNC19(&progress);
	errs |= FUNC5(&state, NULL);
	if (o->update)
		FUNC7(GIT_ATTR_CHECKIN);

	if (o->clone)
		FUNC16(index);

	FUNC21("check_updates");
	return errs != 0;
}