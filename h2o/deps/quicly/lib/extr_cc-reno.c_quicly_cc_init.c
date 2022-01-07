
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cwnd; int ssthresh; } ;
typedef TYPE_1__ quicly_cc_t ;


 int QUICLY_INITIAL_WINDOW ;
 int QUICLY_MAX_PACKET_SIZE ;
 int UINT32_MAX ;
 int memset (TYPE_1__*,int ,int) ;

void quicly_cc_init(quicly_cc_t *cc)
{
    memset(cc, 0, sizeof(quicly_cc_t));
    cc->cwnd = QUICLY_INITIAL_WINDOW * QUICLY_MAX_PACKET_SIZE;
    cc->ssthresh = UINT32_MAX;
}
