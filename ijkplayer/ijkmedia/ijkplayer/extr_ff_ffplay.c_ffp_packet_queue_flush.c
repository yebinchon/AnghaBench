
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PacketQueue ;


 void packet_queue_flush (int *) ;

void ffp_packet_queue_flush(PacketQueue *q)
{
    return packet_queue_flush(q);
}
