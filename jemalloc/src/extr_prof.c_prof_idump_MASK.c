#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_3__ {int enq_idump; scalar_t__ enq; } ;
typedef  TYPE_1__ prof_tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  prof_booted ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prof_dump_filename_mtx ; 
 int /*<<< orphan*/  prof_dump_iseq ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(tsdn_t *tsdn) {
	tsd_t *tsd;
	prof_tdata_t *tdata;

	FUNC0(config_prof);

	if (!prof_booted || FUNC10(tsdn) || !FUNC3()) {
		return;
	}
	tsd = FUNC11(tsdn);
	if (FUNC8(tsd) > 0) {
		return;
	}

	tdata = FUNC7(tsd, true);
	if (tdata == NULL) {
		return;
	}
	if (tdata->enq) {
		tdata->enq_idump = true;
		return;
	}

	FUNC1(FUNC9(tsd), &prof_dump_filename_mtx);
	if (FUNC6(FUNC9(tsd))[0] == '\0') {
		FUNC2(FUNC9(tsd), &prof_dump_filename_mtx);
		return;
	}
	char filename[PATH_MAX + 1];
	FUNC5(tsd, filename, 'i', prof_dump_iseq);
	prof_dump_iseq++;
	FUNC2(FUNC9(tsd), &prof_dump_filename_mtx);
	FUNC4(tsd, false, filename, false);
}