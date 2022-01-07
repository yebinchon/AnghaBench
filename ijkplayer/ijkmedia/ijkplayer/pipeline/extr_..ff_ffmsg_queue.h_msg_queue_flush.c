
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {int mutex; scalar_t__ nb_messages; TYPE_2__* first_msg; int * last_msg; TYPE_2__* recycle_msg; } ;
typedef TYPE_1__ MessageQueue ;
typedef TYPE_2__ AVMessage ;


 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int av_freep (TYPE_2__**) ;

__attribute__((used)) inline static void msg_queue_flush(MessageQueue *q)
{
    AVMessage *msg, *msg1;

    SDL_LockMutex(q->mutex);
    for (msg = q->first_msg; msg != ((void*)0); msg = msg1) {
        msg1 = msg->next;



        msg->next = q->recycle_msg;
        q->recycle_msg = msg;

    }
    q->last_msg = ((void*)0);
    q->first_msg = ((void*)0);
    q->nb_messages = 0;
    SDL_UnlockMutex(q->mutex);
}
