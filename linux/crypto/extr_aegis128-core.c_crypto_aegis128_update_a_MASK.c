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
typedef  union aegis_block {int dummy; } aegis_block ;
struct aegis_state {int /*<<< orphan*/ * blocks; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct aegis_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct aegis_state*,union aegis_block const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,union aegis_block const*) ; 

__attribute__((used)) static void FUNC4(struct aegis_state *state,
				     const union aegis_block *msg)
{
	if (FUNC0()) {
		FUNC2(state, msg);
		return;
	}

	FUNC1(state);
	FUNC3(&state->blocks[0], msg);
}