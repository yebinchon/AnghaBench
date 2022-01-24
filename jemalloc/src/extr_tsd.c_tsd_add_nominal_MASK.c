#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_2__ {int /*<<< orphan*/  tsd_link; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcache ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tsd_nominal_tsds ; 
 int /*<<< orphan*/  tsd_nominal_tsds_lock ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ tsd_state_nominal_max ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(tsd_t *tsd) {
	FUNC1(!FUNC6(tsd));
	FUNC1(FUNC7(tsd) <= tsd_state_nominal_max);
	FUNC4(tsd, FUNC0(tcache).tsd_link);
	FUNC2(FUNC8(tsd), &tsd_nominal_tsds_lock);
	FUNC5(&tsd_nominal_tsds, tsd, FUNC0(tcache).tsd_link);
	FUNC3(FUNC8(tsd), &tsd_nominal_tsds_lock);
}