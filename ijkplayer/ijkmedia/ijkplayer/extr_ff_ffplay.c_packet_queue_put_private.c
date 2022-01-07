
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int duration; scalar_t__ size; } ;
struct TYPE_9__ {TYPE_3__ pkt; struct TYPE_9__* next; scalar_t__ serial; } ;
struct TYPE_8__ {int recycle_count; int alloc_count; int cond; int duration; int size; int nb_packets; TYPE_2__* last_pkt; TYPE_2__* first_pkt; scalar_t__ serial; TYPE_2__* recycle_pkt; scalar_t__ abort_request; } ;
typedef TYPE_1__ PacketQueue ;
typedef TYPE_2__ MyAVPacketList ;
typedef TYPE_3__ AVPacket ;


 int AV_LOG_DEBUG ;
 scalar_t__ FFMAX (int ,int ) ;
 int MIN_PKT_DURATION ;
 int SDL_CondSignal (int ) ;
 int av_log (int ,int ,char*,int,int,int) ;
 TYPE_2__* av_malloc (int) ;
 int ffp ;
 TYPE_3__ flush_pkt ;

__attribute__((used)) static int packet_queue_put_private(PacketQueue *q, AVPacket *pkt)
{
    MyAVPacketList *pkt1;

    if (q->abort_request)
       return -1;




    pkt1 = q->recycle_pkt;
    if (pkt1) {
        q->recycle_pkt = pkt1->next;
        q->recycle_count++;
    } else {
        q->alloc_count++;
        pkt1 = av_malloc(sizeof(MyAVPacketList));
    }







    if (!pkt1)
        return -1;
    pkt1->pkt = *pkt;
    pkt1->next = ((void*)0);
    if (pkt == &flush_pkt)
        q->serial++;
    pkt1->serial = q->serial;

    if (!q->last_pkt)
        q->first_pkt = pkt1;
    else
        q->last_pkt->next = pkt1;
    q->last_pkt = pkt1;
    q->nb_packets++;
    q->size += pkt1->pkt.size + sizeof(*pkt1);

    q->duration += FFMAX(pkt1->pkt.duration, MIN_PKT_DURATION);


    SDL_CondSignal(q->cond);
    return 0;
}
