
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; } ;
struct TYPE_6__ {int recycle_count; int alloc_count; int cond; int nb_messages; TYPE_2__* last_msg; TYPE_2__* first_msg; TYPE_2__* recycle_msg; scalar_t__ abort_request; } ;
typedef TYPE_1__ MessageQueue ;
typedef TYPE_2__ AVMessage ;


 int AV_LOG_DEBUG ;
 int SDL_CondSignal (int ) ;
 int av_log (int *,int ,char*,int,int,int) ;
 TYPE_2__* av_malloc (int) ;

__attribute__((used)) inline static int msg_queue_put_private(MessageQueue *q, AVMessage *msg)
{
    AVMessage *msg1;

    if (q->abort_request)
        return -1;




    msg1 = q->recycle_msg;
    if (msg1) {
        q->recycle_msg = msg1->next;
        q->recycle_count++;
    } else {
        q->alloc_count++;
        msg1 = av_malloc(sizeof(AVMessage));
    }







    if (!msg1)
        return -1;

    *msg1 = *msg;
    msg1->next = ((void*)0);

    if (!q->last_msg)
        q->first_msg = msg1;
    else
        q->last_msg->next = msg1;
    q->last_msg = msg1;
    q->nb_messages++;
    SDL_CondSignal(q->cond);
    return 0;
}
