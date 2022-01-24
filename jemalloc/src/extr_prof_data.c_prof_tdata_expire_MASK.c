#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
struct TYPE_4__ {int expired; int /*<<< orphan*/  lock; scalar_t__ attached; } ;
typedef  TYPE_1__ prof_tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static bool
FUNC3(tsdn_t *tsdn, prof_tdata_t *tdata) {
	bool destroy_tdata;

	FUNC0(tsdn, tdata->lock);
	if (!tdata->expired) {
		tdata->expired = true;
		destroy_tdata = tdata->attached ? false :
		    FUNC2(tsdn, tdata, false);
	} else {
		destroy_tdata = false;
	}
	FUNC1(tsdn, tdata->lock);

	return destroy_tdata;
}