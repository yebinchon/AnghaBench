
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; } ;
struct TYPE_7__ {int cond; int mutex; TYPE_2__* recycle_msg; } ;
typedef TYPE_1__ MessageQueue ;
typedef TYPE_2__ AVMessage ;


 int SDL_DestroyCond (int ) ;
 int SDL_DestroyMutex (int ) ;
 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int av_freep (TYPE_2__**) ;
 int msg_free_res (TYPE_2__*) ;
 int msg_queue_flush (TYPE_1__*) ;

__attribute__((used)) inline static void msg_queue_destroy(MessageQueue *q)
{
    msg_queue_flush(q);

    SDL_LockMutex(q->mutex);
    while(q->recycle_msg) {
        AVMessage *msg = q->recycle_msg;
        if (msg)
            q->recycle_msg = msg->next;
        msg_free_res(msg);
        av_freep(&msg);
    }
    SDL_UnlockMutex(q->mutex);

    SDL_DestroyMutex(q->mutex);
    SDL_DestroyCond(q->cond);
}
