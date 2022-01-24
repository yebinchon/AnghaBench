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

/* Variables and functions */
 int /*<<< orphan*/  WITNESS_RANK_OMIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  malloc_mutex_rank_exclusive ; 
 scalar_t__ ncleanups ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  tsd_nominal_tsds_lock ; 

tsd_t *
FUNC4(void) {
	tsd_t *tsd;

	ncleanups = 0;
	if (FUNC0(&tsd_nominal_tsds_lock, "tsd_nominal_tsds_lock",
	    WITNESS_RANK_OMIT, malloc_mutex_rank_exclusive)) {
		return NULL;
	}
	if (FUNC2()) {
		return NULL;
	}
	tsd = FUNC3();
	*FUNC1(tsd) = true;
	return tsd;
}