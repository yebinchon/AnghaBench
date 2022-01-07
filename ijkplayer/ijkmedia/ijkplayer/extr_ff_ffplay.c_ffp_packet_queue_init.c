
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PacketQueue ;


 int packet_queue_init (int *) ;

int ffp_packet_queue_init(PacketQueue *q)
{
    return packet_queue_init(q);
}
