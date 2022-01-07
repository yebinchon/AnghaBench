
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; int pkt; } ;
struct TYPE_5__ {int mutex; scalar_t__ duration; scalar_t__ size; scalar_t__ nb_packets; TYPE_2__* first_pkt; int * last_pkt; TYPE_2__* recycle_pkt; } ;
typedef TYPE_1__ PacketQueue ;
typedef TYPE_2__ MyAVPacketList ;


 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int av_freep (TYPE_2__**) ;
 int av_packet_unref (int *) ;

__attribute__((used)) static void packet_queue_flush(PacketQueue *q)
{
    MyAVPacketList *pkt, *pkt1;

    SDL_LockMutex(q->mutex);
    for (pkt = q->first_pkt; pkt; pkt = pkt1) {
        pkt1 = pkt->next;
        av_packet_unref(&pkt->pkt);



        pkt->next = q->recycle_pkt;
        q->recycle_pkt = pkt;

    }
    q->last_pkt = ((void*)0);
    q->first_pkt = ((void*)0);
    q->nb_packets = 0;
    q->size = 0;
    q->duration = 0;
    SDL_UnlockMutex(q->mutex);
}
