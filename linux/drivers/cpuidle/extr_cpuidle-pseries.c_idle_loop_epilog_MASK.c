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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {scalar_t__ idle; int /*<<< orphan*/  wait_state_cycles; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRN_PURR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline void FUNC5(unsigned long in_purr)
{
	u64 wait_cycles;

	wait_cycles = FUNC0(FUNC2()->wait_state_cycles);
	wait_cycles += FUNC3(SPRN_PURR) - in_purr;
	FUNC2()->wait_state_cycles = FUNC1(wait_cycles);
	FUNC2()->idle = 0;

	FUNC4();
}