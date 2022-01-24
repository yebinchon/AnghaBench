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
typedef  unsigned int uint64_t ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,char*) ; 
 unsigned int FUNC3 (unsigned int*,unsigned int) ; 

__attribute__((used)) static void
FUNC4(void) {
	uint64_t sa, sb, ra, rb;
	unsigned lg_range;

	sa = 42;
	ra = FUNC3(&sa, 64);
	sa = 42;
	rb = FUNC3(&sa, 64);
	FUNC1(ra, rb,
	    "Repeated generation should produce repeated results");

	sb = 42;
	rb = FUNC3(&sb, 64);
	FUNC1(ra, rb,
	    "Equivalent generation should produce equivalent results");

	sa = 42;
	ra = FUNC3(&sa, 64);
	rb = FUNC3(&sa, 64);
	FUNC2(ra, rb,
	    "Full-width results must not immediately repeat");

	sa = 42;
	ra = FUNC3(&sa, 64);
	for (lg_range = 63; lg_range > 0; lg_range--) {
		sb = 42;
		rb = FUNC3(&sb, lg_range);
		FUNC1((rb & (FUNC0(0xffffffffffffffff) << lg_range)),
		    0, "High order bits should be 0, lg_range=%u", lg_range);
		FUNC1(rb, (ra >> (64 - lg_range)),
		    "Expected high order bits of full-width result, "
		    "lg_range=%u", lg_range);
	}
}