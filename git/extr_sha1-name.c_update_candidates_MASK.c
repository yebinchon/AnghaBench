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
struct object_id {int dummy; } ;
struct disambiguate_state {int ambiguous; int candidate_exists; int candidate_checked; int disambiguate_fn_used; scalar_t__ candidate_ok; int /*<<< orphan*/  cb_data; int /*<<< orphan*/  repo; scalar_t__ (* fn ) (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ ) ;struct object_id const candidate; scalar_t__ always_call_fn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object_id const*,struct object_id const*) ; 
 scalar_t__ FUNC1 (struct object_id const*,struct object_id const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct disambiguate_state *ds, const struct object_id *current)
{
	if (ds->always_call_fn) {
		ds->ambiguous = ds->fn(ds->repo, current, ds->cb_data) ? 1 : 0;
		return;
	}
	if (!ds->candidate_exists) {
		/* this is the first candidate */
		FUNC0(&ds->candidate, current);
		ds->candidate_exists = 1;
		return;
	} else if (FUNC1(&ds->candidate, current)) {
		/* the same as what we already have seen */
		return;
	}

	if (!ds->fn) {
		/* cannot disambiguate between ds->candidate and current */
		ds->ambiguous = 1;
		return;
	}

	if (!ds->candidate_checked) {
		ds->candidate_ok = ds->fn(ds->repo, &ds->candidate, ds->cb_data);
		ds->disambiguate_fn_used = 1;
		ds->candidate_checked = 1;
	}

	if (!ds->candidate_ok) {
		/* discard the candidate; we know it does not satisfy fn */
		FUNC0(&ds->candidate, current);
		ds->candidate_checked = 0;
		return;
	}

	/* if we reach this point, we know ds->candidate satisfies fn */
	if (ds->fn(ds->repo, current, ds->cb_data)) {
		/*
		 * if both current and candidate satisfy fn, we cannot
		 * disambiguate.
		 */
		ds->candidate_ok = 0;
		ds->ambiguous = 1;
	}

	/* otherwise, current can be discarded and candidate is still good */
}