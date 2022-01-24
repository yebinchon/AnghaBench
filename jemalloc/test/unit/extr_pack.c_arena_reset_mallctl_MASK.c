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
typedef  int /*<<< orphan*/  mib ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t*,size_t*) ; 

__attribute__((used)) static void
FUNC3(unsigned arena_ind) {
	size_t mib[3];
	size_t miblen = sizeof(mib)/sizeof(size_t);

	FUNC0(FUNC2("arena.0.reset", mib, &miblen), 0,
	    "Unexpected mallctlnametomib() failure");
	mib[1] = (size_t)arena_ind;
	FUNC0(FUNC1(mib, miblen, NULL, NULL, NULL, 0), 0,
	    "Unexpected mallctlbymib() failure");
}