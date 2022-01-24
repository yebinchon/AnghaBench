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
struct resctrl_pqr_state {scalar_t__ cur_rmid; scalar_t__ cur_closid; scalar_t__ default_rmid; scalar_t__ default_closid; } ;

/* Variables and functions */
 int /*<<< orphan*/  IA32_PQR_ASSOC ; 
 int /*<<< orphan*/  pqr_state ; 
 struct resctrl_pqr_state* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int cpu)
{
	struct resctrl_pqr_state *state = FUNC0(&pqr_state);

	state->default_closid = 0;
	state->default_rmid = 0;
	state->cur_closid = 0;
	state->cur_rmid = 0;
	FUNC1(IA32_PQR_ASSOC, 0, 0);
}