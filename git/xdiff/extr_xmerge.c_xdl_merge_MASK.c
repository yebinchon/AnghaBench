#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ xpparam_t ;
struct TYPE_22__ {TYPE_1__ xpp; } ;
typedef  TYPE_2__ xmparam_t ;
struct TYPE_23__ {int /*<<< orphan*/  xdf1; int /*<<< orphan*/  xdf2; } ;
typedef  TYPE_3__ xdfenv_t ;
typedef  int /*<<< orphan*/  xdchange_t ;
struct TYPE_24__ {scalar_t__ size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_4__ mmfile_t ;
struct TYPE_25__ {scalar_t__ size; int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_5__ mmbuffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*,TYPE_4__*,TYPE_1__ const*,TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__ const*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (scalar_t__) ; 

int FUNC8(mmfile_t *orig, mmfile_t *mf1, mmfile_t *mf2,
		xmparam_t const *xmp, mmbuffer_t *result)
{
	xdchange_t *xscr1, *xscr2;
	xdfenv_t xe1, xe2;
	int status;
	xpparam_t const *xpp = &xmp->xpp;

	result->ptr = NULL;
	result->size = 0;

	if (FUNC3(orig, mf1, xpp, &xe1) < 0) {
		return -1;
	}
	if (FUNC3(orig, mf2, xpp, &xe2) < 0) {
		FUNC5(&xe1);
		return -1;
	}
	if (FUNC2(&xe1.xdf1, &xe1.xdf2, xpp->flags) < 0 ||
	    FUNC2(&xe1.xdf2, &xe1.xdf1, xpp->flags) < 0 ||
	    FUNC1(&xe1, &xscr1) < 0) {
		FUNC5(&xe1);
		return -1;
	}
	if (FUNC2(&xe2.xdf1, &xe2.xdf2, xpp->flags) < 0 ||
	    FUNC2(&xe2.xdf2, &xe2.xdf1, xpp->flags) < 0 ||
	    FUNC1(&xe2, &xscr2) < 0) {
		FUNC6(xscr1);
		FUNC5(&xe1);
		FUNC5(&xe2);
		return -1;
	}
	status = 0;
	if (!xscr1) {
		result->ptr = FUNC7(mf2->size);
		FUNC0(result->ptr, mf2->ptr, mf2->size);
		result->size = mf2->size;
	} else if (!xscr2) {
		result->ptr = FUNC7(mf1->size);
		FUNC0(result->ptr, mf1->ptr, mf1->size);
		result->size = mf1->size;
	} else {
		status = FUNC4(&xe1, xscr1,
				      &xe2, xscr2,
				      xmp, result);
	}
	FUNC6(xscr1);
	FUNC6(xscr2);

	FUNC5(&xe1);
	FUNC5(&xe2);

	return status;
}