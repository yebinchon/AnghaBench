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
struct octeon_cop2_state {int dummy; } ;

/* Variables and functions */
 unsigned long ST0_CU2 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_cop2_state*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

void FUNC6(struct octeon_cop2_state *state,
			   unsigned long crypto_flags)
{
	unsigned long flags;

	FUNC1(flags);
	if (crypto_flags & ST0_CU2)
		FUNC2(state);
	else
		FUNC5(FUNC4() & ~ST0_CU2);
	FUNC0(flags);
	FUNC3();
}