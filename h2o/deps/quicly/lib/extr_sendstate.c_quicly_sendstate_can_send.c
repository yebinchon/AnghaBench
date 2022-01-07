
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ num_ranges; TYPE_1__* ranges; } ;
struct TYPE_7__ {scalar_t__ const size_inflight; scalar_t__ final_size; TYPE_2__ pending; } ;
typedef TYPE_3__ quicly_sendstate_t ;
struct TYPE_5__ {scalar_t__ start; } ;


 int assert (int) ;

int quicly_sendstate_can_send(quicly_sendstate_t *state, const uint64_t *max_stream_data)
{
    if (state->pending.num_ranges != 0) {


        uint64_t blocked_at = max_stream_data != ((void*)0) ? *max_stream_data : state->size_inflight;
        if (state->pending.ranges[0].start < blocked_at)
            return 1;

        if (state->pending.ranges[0].start >= state->final_size) {
            assert(state->pending.ranges[0].start == state->final_size);
            return 1;
        }
    }

    return 0;
}
