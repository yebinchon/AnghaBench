
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size_inflight; scalar_t__ final_size; int pending; int acked; } ;
typedef TYPE_1__ quicly_sendstate_t ;


 int quicly_ranges_clear (int *) ;

void quicly_sendstate_dispose(quicly_sendstate_t *state)
{
    quicly_ranges_clear(&state->acked);
    quicly_ranges_clear(&state->pending);
    state->final_size = 0;
    state->size_inflight = 0;
}
