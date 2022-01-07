
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int final_size; scalar_t__ size_inflight; int pending; int acked; } ;
typedef TYPE_1__ quicly_sendstate_t ;


 int UINT64_MAX ;
 int quicly_ranges_init (int *) ;
 int quicly_ranges_init_with_range (int *,int ,int ) ;

void quicly_sendstate_init(quicly_sendstate_t *state)
{
    quicly_ranges_init_with_range(&state->acked, 0, 0);
    quicly_ranges_init(&state->pending);
    state->size_inflight = 0;
    state->final_size = UINT64_MAX;
}
