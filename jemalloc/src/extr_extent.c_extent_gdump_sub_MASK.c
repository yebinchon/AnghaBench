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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 size_t LG_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  curpages ; 
 size_t FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ extent_state_active ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ opt_prof ; 

__attribute__((used)) static void
FUNC6(tsdn_t *tsdn, const extent_t *extent) {
	FUNC3(config_prof);

	if (opt_prof && FUNC5(extent) == extent_state_active) {
		size_t nsub = FUNC4(extent) >> LG_PAGE;
		FUNC0(FUNC2(&curpages, ATOMIC_RELAXED) >= nsub);
		FUNC1(&curpages, nsub, ATOMIC_RELAXED);
	}
}