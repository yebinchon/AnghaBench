#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_3__ {int /*<<< orphan*/  zq; int /*<<< orphan*/  zp; int /*<<< orphan*/  xq; int /*<<< orphan*/  xp; int /*<<< orphan*/  pZq; int /*<<< orphan*/  pZp; int /*<<< orphan*/  pXq; int /*<<< orphan*/  pXp; } ;
typedef  TYPE_1__ ST_curve25519ladderstepWorkingState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,void**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(
    ST_curve25519ladderstepWorkingState* state,
    uint8                                b
)
{
    #ifdef DH_SWAP_BY_POINTERS
    swapPointersConditionally ((void **) &state->pXp,(void **) &state->pXq,b);
    swapPointersConditionally ((void **) &state->pZp,(void **) &state->pZq,b);
    #else
    FUNC0 (&state->xp, &state->xq,b);
    FUNC0 (&state->zp, &state->zq,b);
    #endif
}