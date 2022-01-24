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
struct aegis128_state {int dummy; } ;

/* Variables and functions */
 struct aegis128_state FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct aegis128_state,void*) ; 
 struct aegis128_state FUNC2 (struct aegis128_state,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void const*) ; 

void FUNC5(void *state, const void *msg)
{
	struct aegis128_state st = FUNC0(state);

	FUNC3();

	st = FUNC2(st, FUNC4(msg));

	FUNC1(st, state);
}