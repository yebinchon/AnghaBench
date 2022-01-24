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
struct TYPE_3__ {scalar_t__ final_size; scalar_t__ size_inflight; int /*<<< orphan*/  pending; int /*<<< orphan*/  acked; } ;
typedef  TYPE_1__ quicly_sendstate_t ;

/* Variables and functions */
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(quicly_sendstate_t *state)
{
    int ret;

    if (state->final_size == UINT64_MAX)
        state->final_size = state->size_inflight;

    ret = FUNC1(&state->acked, 0, state->final_size + 1);
    FUNC0(ret == 0 && "guaranteed to succeed, because the numebr of ranges never increases");
    FUNC2(&state->pending);
}