#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int flags; } ;
typedef  TYPE_1__ xpparam_t ;
struct TYPE_18__ {int /*<<< orphan*/  xdf1; int /*<<< orphan*/  xdf2; } ;
typedef  TYPE_2__ xdfenv_t ;
struct TYPE_19__ {scalar_t__ hunk_func; } ;
typedef  TYPE_3__ xdemitconf_t ;
typedef  int /*<<< orphan*/  xdemitcb_t ;
typedef  int /*<<< orphan*/  xdchange_t ;
typedef  int /*<<< orphan*/  mmfile_t ;
typedef  scalar_t__ (* emit_func_t ) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__ const*) ;

/* Variables and functions */
 int XDF_IGNORE_BLANK_LINES ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 

int FUNC8(mmfile_t *mf1, mmfile_t *mf2, xpparam_t const *xpp,
	     xdemitconf_t const *xecfg, xdemitcb_t *ecb) {
	xdchange_t *xscr;
	xdfenv_t xe;
	emit_func_t ef = xecfg->hunk_func ? xdl_call_hunk_func : xdl_emit_diff;

	if (FUNC3(mf1, mf2, xpp, &xe) < 0) {

		return -1;
	}
	if (FUNC2(&xe.xdf1, &xe.xdf2, xpp->flags) < 0 ||
	    FUNC2(&xe.xdf2, &xe.xdf1, xpp->flags) < 0 ||
	    FUNC0(&xe, &xscr) < 0) {

		FUNC5(&xe);
		return -1;
	}
	if (xscr) {
		if (xpp->flags & XDF_IGNORE_BLANK_LINES)
			FUNC7(xscr, &xe, xpp->flags);

		if (ef(&xe, xscr, ecb, xecfg) < 0) {

			FUNC6(xscr);
			FUNC5(&xe);
			return -1;
		}
		FUNC6(xscr);
	}
	FUNC5(&xe);

	return 0;
}