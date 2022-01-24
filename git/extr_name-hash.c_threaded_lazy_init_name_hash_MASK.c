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
struct lazy_name_thread_data {int k_start; int k_end; int /*<<< orphan*/  pthread; struct lazy_name_thread_data* lazy_entries; struct index_state* istate; } ;
struct lazy_entry {int k_start; int k_end; int /*<<< orphan*/  pthread; struct lazy_entry* lazy_entries; struct index_state* istate; } ;
struct lazy_dir_thread_data {int k_start; int k_end; int /*<<< orphan*/  pthread; struct lazy_dir_thread_data* lazy_entries; struct index_state* istate; } ;
struct index_state {int cache_nr; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  HAVE_THREADS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct lazy_name_thread_data*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  lazy_dir_thread_proc ; 
 int /*<<< orphan*/  lazy_name_thread_proc ; 
 int lazy_nr_dir_threads ; 
 int /*<<< orphan*/  FUNC6 (struct index_state*,struct lazy_name_thread_data*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lazy_name_thread_data*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct lazy_name_thread_data* FUNC10 (int,int) ; 

__attribute__((used)) static void FUNC11(
	struct index_state *istate)
{
	int err;
	int nr_each;
	int k_start;
	int t;
	struct lazy_entry *lazy_entries;
	struct lazy_dir_thread_data *td_dir;
	struct lazy_name_thread_data *td_name;

	if (!HAVE_THREADS)
		return;

	k_start = 0;
	nr_each = FUNC0(istate->cache_nr, lazy_nr_dir_threads);

	lazy_entries = FUNC10(istate->cache_nr, sizeof(struct lazy_entry));
	td_dir = FUNC10(lazy_nr_dir_threads, sizeof(struct lazy_dir_thread_data));
	td_name = FUNC10(1, sizeof(struct lazy_name_thread_data));

	FUNC5();

	/*
	 * Phase 1:
	 * Build "istate->dir_hash" using n "dir" threads (and a read-only index).
	 */
	for (t = 0; t < lazy_nr_dir_threads; t++) {
		struct lazy_dir_thread_data *td_dir_t = td_dir + t;
		td_dir_t->istate = istate;
		td_dir_t->lazy_entries = lazy_entries;
		td_dir_t->k_start = k_start;
		k_start += nr_each;
		if (k_start > istate->cache_nr)
			k_start = istate->cache_nr;
		td_dir_t->k_end = k_start;
		err = FUNC7(&td_dir_t->pthread, NULL, lazy_dir_thread_proc, td_dir_t);
		if (err)
			FUNC3(FUNC1("unable to create lazy_dir thread: %s"), FUNC9(err));
	}
	for (t = 0; t < lazy_nr_dir_threads; t++) {
		struct lazy_dir_thread_data *td_dir_t = td_dir + t;
		if (FUNC8(td_dir_t->pthread, NULL))
			FUNC3("unable to join lazy_dir_thread");
	}

	/*
	 * Phase 2:
	 * Iterate over all index entries and add them to the "istate->name_hash"
	 * using a single "name" background thread.
	 * (Testing showed it wasn't worth running more than 1 thread for this.)
	 *
	 * Meanwhile, finish updating the parent directory ref-counts for each
	 * index entry using the current thread.  (This step is very fast and
	 * doesn't need threading.)
	 */
	td_name->istate = istate;
	td_name->lazy_entries = lazy_entries;
	err = FUNC7(&td_name->pthread, NULL, lazy_name_thread_proc, td_name);
	if (err)
		FUNC3(FUNC1("unable to create lazy_name thread: %s"), FUNC9(err));

	FUNC6(istate, lazy_entries);

	err = FUNC8(td_name->pthread, NULL);
	if (err)
		FUNC3(FUNC1("unable to join lazy_name thread: %s"), FUNC9(err));

	FUNC2();

	FUNC4(td_name);
	FUNC4(td_dir);
	FUNC4(lazy_entries);
}