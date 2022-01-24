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
struct wt_status_change_data {int stagemask; int /*<<< orphan*/  oid_index; int /*<<< orphan*/  mode_index; int /*<<< orphan*/  index_status; } ;
struct wt_status {int committable; int /*<<< orphan*/  change; int /*<<< orphan*/  pathspec; TYPE_1__* repo; } ;
struct string_list_item {struct wt_status_change_data* util; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int /*<<< orphan*/  oid; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {struct index_state* index; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_STATUS_ADDED ; 
 int /*<<< orphan*/  DIFF_STATUS_UNMERGED ; 
 scalar_t__ FUNC0 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*,struct cache_entry const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct string_list_item* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wt_status_change_data* FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct wt_status *s)
{
	struct index_state *istate = s->repo->index;
	int i;

	for (i = 0; i < istate->cache_nr; i++) {
		struct string_list_item *it;
		struct wt_status_change_data *d;
		const struct cache_entry *ce = istate->cache[i];

		if (!FUNC1(istate, ce, &s->pathspec, NULL))
			continue;
		if (FUNC0(ce))
			continue;
		it = FUNC4(&s->change, ce->name);
		d = it->util;
		if (!d) {
			d = FUNC5(1, sizeof(*d));
			it->util = d;
		}
		if (FUNC2(ce)) {
			d->index_status = DIFF_STATUS_UNMERGED;
			d->stagemask |= (1 << (FUNC2(ce) - 1));
			/*
			 * Don't bother setting {mode,oid}_{head,index} since the print
			 * code will output the stage values directly and not use the
			 * values in these fields.
			 */
			s->committable = 1;
		} else {
			d->index_status = DIFF_STATUS_ADDED;
			/* Leave {mode,oid}_head zero for adds. */
			d->mode_index = ce->ce_mode;
			FUNC3(&d->oid_index, &ce->oid);
			s->committable = 1;
		}
	}
}