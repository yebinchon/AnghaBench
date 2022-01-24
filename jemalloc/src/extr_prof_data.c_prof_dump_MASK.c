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
typedef  int /*<<< orphan*/  tsd_t ;
struct prof_tdata_merge_iter_arg_s {int /*<<< orphan*/  cnt_all; } ;
struct prof_gctx_merge_iter_arg_s {int /*<<< orphan*/  leak_ngctx; } ;
struct prof_gctx_dump_iter_arg_s {int dummy; } ;
typedef  int /*<<< orphan*/  prof_tdata_t ;
typedef  int /*<<< orphan*/  prof_gctx_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ *,struct prof_tdata_merge_iter_arg_s*,struct prof_gctx_merge_iter_arg_s*,struct prof_gctx_dump_iter_arg_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prof_dump_mtx ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct prof_tdata_merge_iter_arg_s*,struct prof_gctx_merge_iter_arg_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

bool
FUNC13(tsd_t *tsd, bool propagate_err, const char *filename,
    bool leakcheck) {
	FUNC1(config_prof);
	FUNC0(FUNC11(tsd) == 0);

	prof_tdata_t * tdata = FUNC10(tsd, true);
	if (tdata == NULL) {
		return true;
	}

	FUNC5(tsd, NULL);
	FUNC2(FUNC12(tsd), &prof_dump_mtx);

	prof_gctx_tree_t gctxs;
	struct prof_tdata_merge_iter_arg_s prof_tdata_merge_iter_arg;
	struct prof_gctx_merge_iter_arg_s prof_gctx_merge_iter_arg;
	struct prof_gctx_dump_iter_arg_s prof_gctx_dump_iter_arg;
	FUNC7(tsd, tdata, &prof_tdata_merge_iter_arg,
	    &prof_gctx_merge_iter_arg, &gctxs);
	bool err = FUNC6(tsd, propagate_err, filename, leakcheck, tdata,
	    &prof_tdata_merge_iter_arg, &prof_gctx_merge_iter_arg,
	    &prof_gctx_dump_iter_arg, &gctxs);
	FUNC8(tsd, &gctxs);

	FUNC3(FUNC12(tsd), &prof_dump_mtx);
	FUNC4(tsd);

	if (err) {
		return true;
	}

	if (leakcheck) {
		FUNC9(&prof_tdata_merge_iter_arg.cnt_all,
		    prof_gctx_merge_iter_arg.leak_ngctx, filename);
	}
	return false;
}