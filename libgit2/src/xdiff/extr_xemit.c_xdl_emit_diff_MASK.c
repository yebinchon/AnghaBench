#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {long nrec; } ;
struct TYPE_16__ {TYPE_7__ xdf2; TYPE_7__ xdf1; } ;
typedef  TYPE_1__ xdfenv_t ;
struct TYPE_17__ {long ctxlen; int flags; } ;
typedef  TYPE_2__ xdemitconf_t ;
typedef  int /*<<< orphan*/  xdemitcb_t ;
struct TYPE_18__ {long i1; long i2; int chg1; int chg2; struct TYPE_18__* next; } ;
typedef  TYPE_3__ xdchange_t ;
struct func_line {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int XDL_EMIT_FUNCCONTEXT ; 
 int XDL_EMIT_FUNCNAMES ; 
 long FUNC0 (long,int /*<<< orphan*/ ) ; 
 long FUNC1 (long,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_2__ const*,struct func_line*,long,long) ; 
 scalar_t__ FUNC3 (TYPE_7__*,long) ; 
 scalar_t__ FUNC4 (TYPE_7__*,TYPE_2__ const*,long) ; 
 scalar_t__ FUNC5 (long,long,long,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_7__*,long,char*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (TYPE_3__**,TYPE_2__ const*) ; 

int FUNC8(xdfenv_t *xe, xdchange_t *xscr, xdemitcb_t *ecb,
		  xdemitconf_t const *xecfg) {
	long s1, s2, e1, e2, lctx;
	xdchange_t *xch, *xche;
	long funclineprev = -1;
	struct func_line func_line = { 0 };

	for (xch = xscr; xch; xch = xche->next) {
		xche = FUNC7(&xch, xecfg);
		if (!xch)
			break;

		s1 = FUNC0(xch->i1 - xecfg->ctxlen, 0);
		s2 = FUNC0(xch->i2 - xecfg->ctxlen, 0);

		if (xecfg->flags & XDL_EMIT_FUNCCONTEXT) {
			long fs1, i1 = xch->i1;

			/* Appended chunk? */
			if (i1 >= xe->xdf1.nrec) {
				long i2 = xch->i2;

				/*
				 * We don't need additional context if
				 * a whole function was added.
				 */
				while (i2 < xe->xdf2.nrec) {
					if (FUNC4(&xe->xdf2, xecfg, i2))
						goto post_context_calculation;
					i2++;
				}

				/*
				 * Otherwise get more context from the
				 * pre-image.
				 */
				i1 = xe->xdf1.nrec - 1;
			}

			fs1 = FUNC2(xe, xecfg, NULL, i1, -1);
			while (fs1 > 0 && !FUNC3(&xe->xdf1, fs1 - 1) &&
			       !FUNC4(&xe->xdf1, xecfg, fs1 - 1))
				fs1--;
			if (fs1 < 0)
				fs1 = 0;
			if (fs1 < s1) {
				s2 -= s1 - fs1;
				s1 = fs1;
			}
		}

 post_context_calculation:
		lctx = xecfg->ctxlen;
		lctx = FUNC1(lctx, xe->xdf1.nrec - (xche->i1 + xche->chg1));
		lctx = FUNC1(lctx, xe->xdf2.nrec - (xche->i2 + xche->chg2));

		e1 = xche->i1 + xche->chg1 + lctx;
		e2 = xche->i2 + xche->chg2 + lctx;

		if (xecfg->flags & XDL_EMIT_FUNCCONTEXT) {
			long fe1 = FUNC2(xe, xecfg, NULL,
						 xche->i1 + xche->chg1,
						 xe->xdf1.nrec);
			while (fe1 > 0 && FUNC3(&xe->xdf1, fe1 - 1))
				fe1--;
			if (fe1 < 0)
				fe1 = xe->xdf1.nrec;
			if (fe1 > e1) {
				e2 += fe1 - e1;
				e1 = fe1;
			}

			/*
			 * Overlap with next change?  Then include it
			 * in the current hunk and start over to find
			 * its new end.
			 */
			if (xche->next) {
				long l = FUNC1(xche->next->i1,
						 xe->xdf1.nrec - 1);
				if (l - xecfg->ctxlen <= e1 ||
				    FUNC2(xe, xecfg, NULL, l, e1) < 0) {
					xche = xche->next;
					goto post_context_calculation;
				}
			}
		}

		/*
		 * Emit current hunk header.
		 */

		if (xecfg->flags & XDL_EMIT_FUNCNAMES) {
			FUNC2(xe, xecfg, &func_line,
				      s1 - 1, funclineprev);
			funclineprev = s1 - 1;
		}
		if (FUNC5(s1 + 1, e1 - s1, s2 + 1, e2 - s2,
				      func_line.buf, func_line.len, ecb) < 0)
			return -1;

		/*
		 * Emit pre-context.
		 */
		for (; s2 < xch->i2; s2++)
			if (FUNC6(&xe->xdf2, s2, " ", ecb) < 0)
				return -1;

		for (s1 = xch->i1, s2 = xch->i2;; xch = xch->next) {
			/*
			 * Merge previous with current change atom.
			 */
			for (; s1 < xch->i1 && s2 < xch->i2; s1++, s2++)
				if (FUNC6(&xe->xdf2, s2, " ", ecb) < 0)
					return -1;

			/*
			 * Removes lines from the first file.
			 */
			for (s1 = xch->i1; s1 < xch->i1 + xch->chg1; s1++)
				if (FUNC6(&xe->xdf1, s1, "-", ecb) < 0)
					return -1;

			/*
			 * Adds lines from the second file.
			 */
			for (s2 = xch->i2; s2 < xch->i2 + xch->chg2; s2++)
				if (FUNC6(&xe->xdf2, s2, "+", ecb) < 0)
					return -1;

			if (xch == xche)
				break;
			s1 = xch->i1 + xch->chg1;
			s2 = xch->i2 + xch->chg2;
		}

		/*
		 * Emit post-context.
		 */
		for (s2 = xche->i2 + xche->chg2; s2 < e2; s2++)
			if (FUNC6(&xe->xdf2, s2, " ", ecb) < 0)
				return -1;
	}

	return 0;
}