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
typedef  int /*<<< orphan*/  extent_hooks_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (void*,void*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  maps_coalesce ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static bool
FUNC4(extent_hooks_t *extent_hooks, void *addr_a, size_t size_a,
    void *addr_b, size_t size_b, bool committed, unsigned arena_ind) {
	if (!maps_coalesce) {
		tsdn_t *tsdn = FUNC3();
		extent_t *a = FUNC2(tsdn, addr_a);
		extent_t *b = FUNC2(tsdn, addr_b);
		if (FUNC0(a, b)) {
			return true;
		}
	}
	return FUNC1(addr_a, addr_b);
}