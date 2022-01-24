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
struct TYPE_3__ {int index; int lg_base; int lg_delta; int ndelta; int psz; int bin; int lg_delta_lookup; scalar_t__ pgs; } ;
typedef  TYPE_1__ sc_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int,int) ; 
 scalar_t__ FUNC3 (int,int,int,int) ; 

__attribute__((used)) static void
FUNC4(
    /* Output. */
    sc_t *sc,
    /* Configuration decisions. */
    int lg_max_lookup, int lg_page, int lg_ngroup,
    /* Inputs specific to the size class. */
    int index, int lg_base, int lg_delta, int ndelta) {
	sc->index = index;
	sc->lg_base = lg_base;
	sc->lg_delta = lg_delta;
	sc->ndelta = ndelta;
	sc->psz = (FUNC2(lg_base, lg_delta, ndelta)
	    % (FUNC0(1) << lg_page) == 0);
	size_t size = (FUNC0(1) << lg_base) + (FUNC0(ndelta) << lg_delta);
	if (index == 0) {
		FUNC1(!sc->psz);
	}
	if (size < (FUNC0(1) << (lg_page + lg_ngroup))) {
		sc->bin = true;
		sc->pgs = FUNC3(lg_page, lg_base, lg_delta, ndelta);
	} else {
		sc->bin = false;
		sc->pgs = 0;
	}
	if (size <= (FUNC0(1) << lg_max_lookup)) {
		sc->lg_delta_lookup = lg_delta;
	} else {
		sc->lg_delta_lookup = 0;
	}
}