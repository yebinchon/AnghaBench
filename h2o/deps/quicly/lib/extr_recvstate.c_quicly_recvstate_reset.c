
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_8__ {int num_ranges; TYPE_1__* ranges; } ;
struct TYPE_7__ {scalar_t__ eos; TYPE_5__ received; } ;
typedef TYPE_2__ quicly_recvstate_t ;
struct TYPE_6__ {scalar_t__ end; } ;


 int QUICLY_TRANSPORT_ERROR_FINAL_OFFSET ;
 scalar_t__ UINT64_MAX ;
 int assert (int) ;
 int quicly_ranges_clear (TYPE_5__*) ;
 int quicly_recvstate_transfer_complete (TYPE_2__*) ;

int quicly_recvstate_reset(quicly_recvstate_t *state, uint64_t eos_at, uint64_t *bytes_missing)
{
    assert(!quicly_recvstate_transfer_complete(state));


    if (state->eos != UINT64_MAX && state->eos != eos_at)
        return QUICLY_TRANSPORT_ERROR_FINAL_OFFSET;
    if (eos_at < state->received.ranges[state->received.num_ranges - 1].end)
        return QUICLY_TRANSPORT_ERROR_FINAL_OFFSET;


    *bytes_missing = eos_at - state->received.ranges[state->received.num_ranges - 1].end;


    quicly_ranges_clear(&state->received);

    return 0;
}
