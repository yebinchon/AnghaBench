#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ xpparam_t ;
typedef  int /*<<< orphan*/  xdlclassifier_t ;
struct TYPE_7__ {int /*<<< orphan*/  xdf1; int /*<<< orphan*/  xdf2; } ;
typedef  TYPE_2__ xdfenv_t ;
typedef  int /*<<< orphan*/  mmfile_t ;
typedef  int /*<<< orphan*/  cf ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ XDF_HISTOGRAM_DIFF ; 
 scalar_t__ XDF_PATIENCE_DIFF ; 
 long XDL_GUESS_NLINES1 ; 
 long XDL_GUESS_NLINES2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ *,long,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(mmfile_t *mf1, mmfile_t *mf2, xpparam_t const *xpp,
		    xdfenv_t *xe) {
	long enl1, enl2, sample;
	xdlclassifier_t cf;

	FUNC1(&cf, 0, sizeof(cf));

	/*
	 * For histogram diff, we can afford a smaller sample size and
	 * thus a poorer estimate of the number of lines, as the hash
	 * table (rhash) won't be filled up/grown. The number of lines
	 * (nrecs) will be updated correctly anyway by
	 * xdl_prepare_ctx().
	 */
	sample = (FUNC0(xpp->flags) == XDF_HISTOGRAM_DIFF
		  ? XDL_GUESS_NLINES2 : XDL_GUESS_NLINES1);

	enl1 = FUNC4(mf1, sample) + 1;
	enl2 = FUNC4(mf2, sample) + 1;

	if (FUNC0(xpp->flags) != XDF_HISTOGRAM_DIFF &&
	    FUNC5(&cf, enl1 + enl2 + 1, xpp->flags) < 0)
		return -1;

	if (FUNC7(1, mf1, enl1, xpp, &cf, &xe->xdf1) < 0) {

		FUNC2(&cf);
		return -1;
	}
	if (FUNC7(2, mf2, enl2, xpp, &cf, &xe->xdf2) < 0) {

		FUNC3(&xe->xdf1);
		FUNC2(&cf);
		return -1;
	}

	if ((FUNC0(xpp->flags) != XDF_PATIENCE_DIFF) &&
	    (FUNC0(xpp->flags) != XDF_HISTOGRAM_DIFF) &&
	    FUNC6(&cf, &xe->xdf1, &xe->xdf2) < 0) {

		FUNC3(&xe->xdf2);
		FUNC3(&xe->xdf1);
		FUNC2(&cf);
		return -1;
	}

	if (FUNC0(xpp->flags) != XDF_HISTOGRAM_DIFF)
		FUNC2(&cf);

	return 0;
}