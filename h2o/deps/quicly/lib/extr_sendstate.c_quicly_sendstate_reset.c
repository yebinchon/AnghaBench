
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ final_size; scalar_t__ size_inflight; int pending; int acked; } ;
typedef TYPE_1__ quicly_sendstate_t ;


 scalar_t__ UINT64_MAX ;
 int assert (int ) ;
 int quicly_ranges_add (int *,int ,scalar_t__) ;
 int quicly_ranges_clear (int *) ;

void quicly_sendstate_reset(quicly_sendstate_t *state)
{
    int ret;

    if (state->final_size == UINT64_MAX)
        state->final_size = state->size_inflight;

    ret = quicly_ranges_add(&state->acked, 0, state->final_size + 1);
    assert(ret == 0 && "guaranteed to succeed, because the numebr of ranges never increases");
    quicly_ranges_clear(&state->pending);
}
