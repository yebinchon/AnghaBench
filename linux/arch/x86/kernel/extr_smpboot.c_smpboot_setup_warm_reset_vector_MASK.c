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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  TRAMPOLINE_PHYS_HIGH ; 
 int /*<<< orphan*/  TRAMPOLINE_PHYS_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(unsigned long start_eip)
{
	unsigned long flags;

	FUNC2(&rtc_lock, flags);
	FUNC0(0xa, 0xf);
	FUNC3(&rtc_lock, flags);
	*((volatile unsigned short *)FUNC1(TRAMPOLINE_PHYS_HIGH)) =
							start_eip >> 4;
	*((volatile unsigned short *)FUNC1(TRAMPOLINE_PHYS_LOW)) =
							start_eip & 0xf;
}