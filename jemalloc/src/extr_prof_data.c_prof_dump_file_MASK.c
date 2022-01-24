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
struct prof_gctx_merge_iter_arg_s {int dummy; } ;
struct prof_gctx_dump_iter_arg_s {int propagate_err; int /*<<< orphan*/  tsdn; } ;
typedef  int /*<<< orphan*/  prof_tdata_t ;
typedef  int /*<<< orphan*/  prof_gctx_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (int) ; 
 int prof_dump_fd ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int,char const*) ; 
 int /*<<< orphan*/  prof_gctx_dump_iter ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC6(tsd_t *tsd, bool propagate_err, const char *filename,
    bool leakcheck, prof_tdata_t *tdata,
    struct prof_tdata_merge_iter_arg_s *prof_tdata_merge_iter_arg,
    struct prof_gctx_merge_iter_arg_s *prof_gctx_merge_iter_arg,
    struct prof_gctx_dump_iter_arg_s *prof_gctx_dump_iter_arg,
    prof_gctx_tree_t *gctxs) {
	/* Create dump file. */
	if ((prof_dump_fd = FUNC4(propagate_err, filename)) == -1) {
		return true;
	}

	/* Dump profile header. */
	if (FUNC2(FUNC5(tsd), propagate_err,
	    &prof_tdata_merge_iter_arg->cnt_all)) {
		goto label_write_error;
	}

	/* Dump per gctx profile stats. */
	prof_gctx_dump_iter_arg->tsdn = FUNC5(tsd);
	prof_gctx_dump_iter_arg->propagate_err = propagate_err;
	if (FUNC0(gctxs, NULL, prof_gctx_dump_iter,
	    (void *)prof_gctx_dump_iter_arg) != NULL) {
		goto label_write_error;
	}

	/* Dump /proc/<pid>/maps if possible. */
	if (FUNC3(propagate_err)) {
		goto label_write_error;
	}

	if (FUNC1(propagate_err)) {
		return true;
	}

	return false;
label_write_error:
	FUNC1(propagate_err);
	return true;
}