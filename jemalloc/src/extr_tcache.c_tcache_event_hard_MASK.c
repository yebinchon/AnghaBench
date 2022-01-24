#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_16__ {size_t next_gc_bin; int* bin_refilled; int* lg_fill_div; } ;
typedef  TYPE_2__ tcache_t ;
typedef  size_t szind_t ;
struct TYPE_15__ {int /*<<< orphan*/  lowbits; } ;
struct TYPE_17__ {TYPE_1__ cur_ptr; int /*<<< orphan*/  low_water_position; } ;
typedef  TYPE_3__ cache_bin_t ;
typedef  int cache_bin_sz_t ;

/* Variables and functions */
 size_t SC_NBINS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,size_t) ; 
 int FUNC2 (TYPE_3__*,size_t) ; 
 int FUNC3 (size_t) ; 
 scalar_t__ nhbins ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*,size_t,int) ; 
 TYPE_3__* FUNC6 (TYPE_2__*,size_t) ; 
 TYPE_3__* FUNC7 (TYPE_2__*,size_t) ; 

void
FUNC8(tsd_t *tsd, tcache_t *tcache) {
	szind_t binind = tcache->next_gc_bin;
	cache_bin_t *tbin;
	bool is_small;
	if (binind < SC_NBINS) {
		tbin = FUNC7(tcache, binind);
		is_small = true;
	} else {
		tbin = FUNC6(tcache, binind);
		is_small = false;
	}

	cache_bin_sz_t low_water = FUNC1(tbin, binind);
	cache_bin_sz_t ncached = FUNC2(tbin, binind);
	if (low_water > 0) {
		/*
		 * Flush (ceiling) 3/4 of the objects below the low water mark.
		 */
		if (is_small) {
			FUNC0(!tcache->bin_refilled[binind]);
			FUNC5(tsd, tcache, tbin, binind,
			    ncached - low_water + (low_water >> 2));
			/*
			 * Reduce fill count by 2X.  Limit lg_fill_div such that
			 * the fill count is always at least 1.
			 */
			if ((FUNC3(binind) >>
			     (tcache->lg_fill_div[binind] + 1)) >= 1) {
				tcache->lg_fill_div[binind]++;
			}
		} else {
			FUNC4(tsd, tcache, tbin, binind,
			     ncached - low_water + (low_water >> 2));
		}
	} else if (is_small && tcache->bin_refilled[binind]) {
		FUNC0(low_water == 0);
		/*
		 * Increase fill count by 2X for small bins.  Make sure
		 * lg_fill_div stays greater than 0.
		 */
		if (tcache->lg_fill_div[binind] > 1) {
			tcache->lg_fill_div[binind]--;
		}
		tcache->bin_refilled[binind] = false;
	}
	tbin->low_water_position = tbin->cur_ptr.lowbits;

	tcache->next_gc_bin++;
	if (tcache->next_gc_bin == nhbins) {
		tcache->next_gc_bin = 0;
	}
}