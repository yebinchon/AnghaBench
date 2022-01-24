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

/* Variables and functions */
 int MAX_PHYSMEM_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned long range = 1 << (MAX_PHYSMEM_BITS - 20); /* in 1MB blocks */
	unsigned long offset = 0;
	unsigned long pivot;

	while (range > 1) {
		range >>= 1;
		pivot = offset + range;
		if (!FUNC1(pivot << 20))
			offset = pivot;
	}

	FUNC0(0, (offset + 1) << 20);
}