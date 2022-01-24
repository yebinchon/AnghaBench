#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ndelta; int /*<<< orphan*/  lg_delta; int /*<<< orphan*/  lg_base; int /*<<< orphan*/  bin; } ;
typedef  TYPE_1__ sc_t ;
struct TYPE_6__ {int nsizes; TYPE_1__* sc; int /*<<< orphan*/  initialized; } ;
typedef  TYPE_2__ sc_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t,int) ; 

void
FUNC3(sc_data_t *data, size_t begin, size_t end, int pgs) {
	FUNC0(data->initialized);
	for (int i = 0; i < data->nsizes; i++) {
		sc_t *sc = &data->sc[i];
		if (!sc->bin) {
			break;
		}
		size_t reg_size = FUNC1(sc->lg_base, sc->lg_delta,
		    sc->ndelta);
		if (begin <= reg_size && reg_size <= end) {
			FUNC2(sc, reg_size, pgs);
		}
	}
}