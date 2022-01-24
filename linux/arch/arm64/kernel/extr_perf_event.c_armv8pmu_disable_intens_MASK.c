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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  pmintenclr_el1 ; 
 int /*<<< orphan*/  pmovsclr_el0 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(int idx)
{
	u32 counter = FUNC0(idx);
	FUNC3(FUNC1(counter), pmintenclr_el1);
	FUNC2();
	/* Clear the overflow flag in case an interrupt is pending. */
	FUNC3(FUNC1(counter), pmovsclr_el0);
	FUNC2();

	return idx;
}