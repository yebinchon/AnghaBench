
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ recovery_end; scalar_t__ cwnd; scalar_t__ ssthresh; scalar_t__ stash; } ;
typedef TYPE_1__ quicly_cc_t ;


 scalar_t__ QUICLY_MAX_PACKET_SIZE ;
 int assert (int) ;

void quicly_cc_on_acked(quicly_cc_t *cc, uint32_t bytes, uint64_t largest_acked, uint32_t inflight)
{
    assert(inflight >= bytes);

    if (largest_acked < cc->recovery_end)
        return;


    if (cc->cwnd < cc->ssthresh) {
        cc->cwnd += bytes;
        return;
    }

    cc->stash += bytes;
    if (cc->stash < cc->cwnd)
        return;

    uint32_t count = cc->stash / cc->cwnd;
    cc->stash -= count * cc->cwnd;
    cc->cwnd += count * QUICLY_MAX_PACKET_SIZE;
}
