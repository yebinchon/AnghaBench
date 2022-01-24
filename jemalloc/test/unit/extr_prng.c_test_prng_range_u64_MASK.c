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
typedef  int uint64_t ;

/* Variables and functions */
 int MAX_RANGE ; 
 unsigned int NREPS ; 
 scalar_t__ RANGE_STEP ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int FUNC1 (int*,int) ; 

__attribute__((used)) static void
FUNC2(void) {
	uint64_t range;
#define MAX_RANGE	10000000
#define RANGE_STEP	97
#define NREPS		10

	for (range = 2; range < MAX_RANGE; range += RANGE_STEP) {
		uint64_t s;
		unsigned rep;

		s = range;
		for (rep = 0; rep < NREPS; rep++) {
			uint64_t r = FUNC1(&s, range);

			FUNC0(r, range, "Out of range");
		}
	}
}