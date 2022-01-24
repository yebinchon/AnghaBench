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
struct aegis128_state {int /*<<< orphan*/ * v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct aegis128_state st, void *state)
{
	FUNC0(state, st.v[0]);
	FUNC0(state + 16, st.v[1]);
	FUNC0(state + 32, st.v[2]);
	FUNC0(state + 48, st.v[3]);
	FUNC0(state + 64, st.v[4]);
}