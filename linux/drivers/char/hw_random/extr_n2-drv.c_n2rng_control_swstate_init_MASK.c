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
struct n2rng_unit {void** control; } ;
struct n2rng {int num_units; int /*<<< orphan*/  hv_state; struct n2rng_unit* units; int /*<<< orphan*/  wd_timeo; int /*<<< orphan*/  accum_cycles; int /*<<< orphan*/  health_check_sec; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HV_RNG_STATE_UNCONFIGURED ; 
 int /*<<< orphan*/  N2RNG_ACCUM_CYCLES_DEFAULT ; 
 int /*<<< orphan*/  N2RNG_FLAG_CONTROL ; 
 int /*<<< orphan*/  N2RNG_HEALTH_CHECK_SEC_DEFAULT ; 
 int /*<<< orphan*/  N2RNG_WD_TIMEO_DEFAULT ; 
 void* FUNC0 (struct n2rng*,int) ; 

__attribute__((used)) static void FUNC1(struct n2rng *np)
{
	int i;

	np->flags |= N2RNG_FLAG_CONTROL;

	np->health_check_sec = N2RNG_HEALTH_CHECK_SEC_DEFAULT;
	np->accum_cycles = N2RNG_ACCUM_CYCLES_DEFAULT;
	np->wd_timeo = N2RNG_WD_TIMEO_DEFAULT;

	for (i = 0; i < np->num_units; i++) {
		struct n2rng_unit *up = &np->units[i];

		up->control[0] = FUNC0(np, 0);
		up->control[1] = FUNC0(np, 1);
		up->control[2] = FUNC0(np, 2);
		up->control[3] = FUNC0(np, 3);
	}

	np->hv_state = HV_RNG_STATE_UNCONFIGURED;
}