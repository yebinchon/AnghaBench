
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ recovery_end; int cwnd; int ssthresh; } ;
typedef TYPE_1__ quicly_cc_t ;


 int QUICLY_MAX_PACKET_SIZE ;
 int QUICLY_MIN_CWND ;
 int QUICLY_RENO_BETA ;

void quicly_cc_on_lost(quicly_cc_t *cc, uint32_t bytes, uint64_t lost_pn, uint64_t next_pn)
{

    if (lost_pn < cc->recovery_end)
        return;

    cc->recovery_end = next_pn;
    cc->cwnd *= QUICLY_RENO_BETA;
    if (cc->cwnd < QUICLY_MIN_CWND * QUICLY_MAX_PACKET_SIZE)
        cc->cwnd = QUICLY_MIN_CWND * QUICLY_MAX_PACKET_SIZE;
    cc->ssthresh = cc->cwnd;
}
