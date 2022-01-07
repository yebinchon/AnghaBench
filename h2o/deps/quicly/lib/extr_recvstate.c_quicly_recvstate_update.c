
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_9__ {int num_ranges; TYPE_1__* ranges; } ;
struct TYPE_8__ {scalar_t__ eos; scalar_t__ data_off; TYPE_5__ received; } ;
typedef TYPE_2__ quicly_recvstate_t ;
struct TYPE_7__ {scalar_t__ end; scalar_t__ start; } ;


 int QUICLY_TRANSPORT_ERROR_FINAL_OFFSET ;
 scalar_t__ UINT64_MAX ;
 int assert (int) ;
 int quicly_ranges_add (TYPE_5__*,scalar_t__,scalar_t__) ;
 int quicly_ranges_clear (TYPE_5__*) ;
 int quicly_recvstate_transfer_complete (TYPE_2__*) ;

int quicly_recvstate_update(quicly_recvstate_t *state, uint64_t off, size_t *len, int is_fin)
{
    int ret;

    assert(!quicly_recvstate_transfer_complete(state));


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


    if (off + *len <= state->data_off) {
        *len = 0;
        if (state->received.ranges[0].end == state->eos)
            goto Complete;
        return 0;
    }


    if (off < state->data_off) {
        size_t delta = state->data_off - off;
        off += delta;
        *len -= delta;
    }


    if (*len != 0)
        if ((ret = quicly_ranges_add(&state->received, off, off + *len)) != 0)
            return ret;
    if (state->received.num_ranges == 1 && state->received.ranges[0].start == 0 && state->received.ranges[0].end == state->eos)
        goto Complete;

    return 0;

Complete:
    quicly_ranges_clear(&state->received);
    return 0;
}
