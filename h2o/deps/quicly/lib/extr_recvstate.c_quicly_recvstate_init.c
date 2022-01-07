
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eos; scalar_t__ data_off; int received; } ;
typedef TYPE_1__ quicly_recvstate_t ;


 int UINT64_MAX ;
 int quicly_ranges_init_with_range (int *,int ,int ) ;

void quicly_recvstate_init(quicly_recvstate_t *state)
{
    quicly_ranges_init_with_range(&state->received, 0, 0);
    state->data_off = 0;
    state->eos = UINT64_MAX;
}
