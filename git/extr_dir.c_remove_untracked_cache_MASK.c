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
struct index_state {int /*<<< orphan*/  cache_changed; int /*<<< orphan*/ * untracked; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNTRACKED_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct index_state *istate)
{
	if (istate->untracked) {
		FUNC0(istate->untracked);
		istate->untracked = NULL;
		istate->cache_changed |= UNTRACKED_CHANGED;
	}
}