#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_5__ {char* thread_name; int attached; int expired; int enq; int enq_idump; int enq_gdump; int dumping; int active; int /*<<< orphan*/  bt2tctx; scalar_t__ tctx_uid_next; void* thr_discrim; void* thr_uid; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ prof_tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  PROF_CKH_MINITEMS ; 
 int /*<<< orphan*/  TSDN_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prof_bt_hash ; 
 int /*<<< orphan*/  prof_bt_keycomp ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  tdatas ; 
 int /*<<< orphan*/  tdatas_mtx ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

prof_tdata_t *
FUNC14(tsd_t *tsd, uint64_t thr_uid, uint64_t thr_discrim,
    char *thread_name, bool active, bool reset_interval) {
	FUNC1(FUNC12(tsd) == 0);

	prof_tdata_t *tdata;

	FUNC2(config_prof);

	/* Initialize an empty cache for this thread. */
	tdata = (prof_tdata_t *)FUNC4(FUNC13(tsd), sizeof(prof_tdata_t),
	    FUNC10(sizeof(prof_tdata_t)), false, NULL, true,
	    FUNC0(TSDN_NULL, 0, true), true);
	if (tdata == NULL) {
		return NULL;
	}

	tdata->lock = FUNC9(thr_uid);
	tdata->thr_uid = thr_uid;
	tdata->thr_discrim = thr_discrim;
	tdata->thread_name = thread_name;
	tdata->attached = true;
	tdata->expired = false;
	tdata->tctx_uid_next = 0;

	if (FUNC3(tsd, &tdata->bt2tctx, PROF_CKH_MINITEMS, prof_bt_hash,
	    prof_bt_keycomp)) {
		FUNC5(FUNC13(tsd), tdata, NULL, NULL, true, true);
		return NULL;
	}

	if (reset_interval) {
		FUNC8(tsd);
	}

	tdata->enq = false;
	tdata->enq_idump = false;
	tdata->enq_gdump = false;

	tdata->dumping = false;
	tdata->active = active;

	FUNC6(FUNC13(tsd), &tdatas_mtx);
	FUNC11(&tdatas, tdata);
	FUNC7(FUNC13(tsd), &tdatas_mtx);

	return tdata;
}