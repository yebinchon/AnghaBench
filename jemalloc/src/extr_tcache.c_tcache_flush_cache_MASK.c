#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_14__ {int /*<<< orphan*/ * arena; } ;
typedef  TYPE_2__ tcache_t ;
struct TYPE_13__ {scalar_t__ nrequests; } ;
struct TYPE_15__ {TYPE_1__ tstats; } ;
typedef  TYPE_3__ cache_bin_t ;

/* Variables and functions */
 unsigned int SC_NBINS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ config_stats ; 
 unsigned int nhbins ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_2__*,unsigned int) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,unsigned int) ; 

__attribute__((used)) static void
FUNC5(tsd_t *tsd, tcache_t *tcache) {
	FUNC0(tcache->arena != NULL);

	for (unsigned i = 0; i < SC_NBINS; i++) {
		cache_bin_t *tbin = FUNC4(tcache, i);
		FUNC2(tsd, tcache, tbin, i, 0);

		if (config_stats) {
			FUNC0(tbin->tstats.nrequests == 0);
		}
	}
	for (unsigned i = SC_NBINS; i < nhbins; i++) {
		cache_bin_t *tbin = FUNC3(tcache, i);
		FUNC1(tsd, tcache, tbin, i, 0);

		if (config_stats) {
			FUNC0(tbin->tstats.nrequests == 0);
		}
	}
}