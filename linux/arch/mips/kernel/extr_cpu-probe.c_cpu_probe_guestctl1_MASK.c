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
struct cpuinfo_mips {int guestid_mask; } ;

/* Variables and functions */
 int MIPS_GCTL1_ID ; 
 int MIPS_GCTL1_ID_SHIFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ cpu_has_guestid ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(struct cpuinfo_mips *c)
{
	if (cpu_has_guestid) {
		/* determine the number of bits of GuestID available */
		FUNC2(MIPS_GCTL1_ID);
		FUNC0();
		c->guestid_mask = (FUNC1() & MIPS_GCTL1_ID)
						>> MIPS_GCTL1_ID_SHIFT;
		FUNC2(0);
	}
}