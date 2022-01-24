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
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_3__ {int active; } ;
typedef  TYPE_1__ prof_tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

bool
FUNC3(tsd_t *tsd, bool active) {
	FUNC0(FUNC2(tsd) == 0);

	prof_tdata_t *tdata;

	tdata = FUNC1(tsd, true);
	if (tdata == NULL) {
		return true;
	}
	tdata->active = active;
	return false;
}