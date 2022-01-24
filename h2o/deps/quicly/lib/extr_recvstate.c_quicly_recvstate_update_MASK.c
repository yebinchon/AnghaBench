#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {int num_ranges; TYPE_1__* ranges; } ;
struct TYPE_8__ {scalar_t__ eos; scalar_t__ data_off; TYPE_5__ received; } ;
typedef  TYPE_2__ quicly_recvstate_t ;
struct TYPE_7__ {scalar_t__ end; scalar_t__ start; } ;

/* Variables and functions */
 int QUICLY_TRANSPORT_ERROR_FINAL_OFFSET ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_5__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

int FUNC4(quicly_recvstate_t *state, uint64_t off, size_t *len, int is_fin)
{
    int ret;

    FUNC0(!FUNC3(state));

    /* eos handling */
    if (state->eos == UINT64_MAX) {
        if (is_fin) {
            state->eos = off + *len;
            if (state->eos < state->received.ranges[state->received.num_ranges - 1].end)
                return QUICLY_TRANSPORT_ERROR_FINAL_OFFSET;
        }
    } else {
        if (off + *len > state->eos)
            return QUICLY_TRANSPORT_ERROR_FINAL_OFFSET;
    }

    /* no state change; entire data has already been received */
    if (off + *len <= state->data_off) {
        *len = 0;
        if (state->received.ranges[0].end == state->eos)
            goto Complete;
        return 0;
    }

    /* adjust if partially received */
    if (off < state->data_off) {
        size_t delta = state->data_off - off;
        off += delta;
        *len -= delta;
    }

    /* update received range */
    if (*len != 0)
        if ((ret = FUNC1(&state->received, off, off + *len)) != 0)
            return ret;
    if (state->received.num_ranges == 1 && state->received.ranges[0].start == 0 && state->received.ranges[0].end == state->eos)
        goto Complete;

    return 0;

Complete:
    FUNC2(&state->received);
    return 0;
}