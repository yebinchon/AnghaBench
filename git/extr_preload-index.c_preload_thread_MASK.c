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
struct thread_data {int offset; int nr; struct progress_data* progress; int /*<<< orphan*/  pathspec; struct index_state* index; } ;
struct stat {int dummy; } ;
struct progress_data {int n; int /*<<< orphan*/  mutex; int /*<<< orphan*/  progress; } ;
struct index_state {scalar_t__ cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; } ;
struct cache_def {int dummy; } ;

/* Variables and functions */
 struct cache_def CACHE_DEF_INIT ; 
 int CE_FSMONITOR_VALID ; 
 int CE_MATCH_IGNORE_FSMONITOR ; 
 int CE_MATCH_RACY_IS_DIRTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_def*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct index_state*,struct cache_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct cache_entry*) ; 
 scalar_t__ FUNC6 (struct cache_entry*) ; 
 scalar_t__ FUNC7 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct index_state*,struct cache_entry*,struct stat*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC11 (struct index_state*,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct cache_def*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC15(void *_data)
{
	int nr, last_nr;
	struct thread_data *p = _data;
	struct index_state *index = p->index;
	struct cache_entry **cep = index->cache + p->offset;
	struct cache_def cache = CACHE_DEF_INIT;

	nr = p->nr;
	if (nr + p->offset > index->cache_nr)
		nr = index->cache_nr - p->offset;
	last_nr = nr;

	do {
		struct cache_entry *ce = *cep++;
		struct stat st;

		if (FUNC6(ce))
			continue;
		if (FUNC0(ce->ce_mode))
			continue;
		if (FUNC7(ce))
			continue;
		if (FUNC5(ce))
			continue;
		if (ce->ce_flags & CE_FSMONITOR_VALID)
			continue;
		if (p->progress && !(nr & 31)) {
			struct progress_data *pd = p->progress;

			FUNC12(&pd->mutex);
			pd->n += last_nr - nr;
			FUNC8(pd->progress, pd->n);
			FUNC13(&pd->mutex);
			last_nr = nr;
		}
		if (!FUNC4(index, ce, &p->pathspec, NULL))
			continue;
		if (FUNC14(&cache, ce->name, FUNC3(ce)))
			continue;
		if (FUNC10(ce->name, &st))
			continue;
		if (FUNC9(index, ce, &st, CE_MATCH_RACY_IS_DIRTY|CE_MATCH_IGNORE_FSMONITOR))
			continue;
		FUNC2(ce);
		FUNC11(index, ce);
	} while (--nr > 0);
	if (p->progress) {
		struct progress_data *pd = p->progress;

		FUNC12(&pd->mutex);
		FUNC8(pd->progress, pd->n + last_nr);
		FUNC13(&pd->mutex);
	}
	FUNC1(&cache);
	return NULL;
}