
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stream_index; scalar_t__ size; int * data; } ;
typedef int PacketQueue ;
typedef TYPE_1__ AVPacket ;


 int av_init_packet (TYPE_1__*) ;
 int packet_queue_put (int *,TYPE_1__*) ;

__attribute__((used)) static int packet_queue_put_nullpacket(PacketQueue *q, int stream_index)
{
    AVPacket pkt1, *pkt = &pkt1;
    av_init_packet(pkt);
    pkt->data = ((void*)0);
    pkt->size = 0;
    pkt->stream_index = stream_index;
    return packet_queue_put(q, pkt);
}
