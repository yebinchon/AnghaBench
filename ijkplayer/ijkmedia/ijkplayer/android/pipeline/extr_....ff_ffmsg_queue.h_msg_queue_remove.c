
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int what; struct TYPE_7__* next; } ;
struct TYPE_6__ {int mutex; TYPE_2__* last_msg; TYPE_2__* first_msg; int nb_messages; TYPE_2__* recycle_msg; int abort_request; } ;
typedef TYPE_1__ MessageQueue ;
typedef TYPE_2__ AVMessage ;


 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int av_free (TYPE_2__*) ;
 int msg_free_res (TYPE_2__*) ;

__attribute__((used)) inline static void msg_queue_remove(MessageQueue *q, int what)
{
    AVMessage **p_msg, *msg, *last_msg;
    SDL_LockMutex(q->mutex);

    last_msg = q->first_msg;

    if (!q->abort_request && q->first_msg) {
        p_msg = &q->first_msg;
        while (*p_msg) {
            msg = *p_msg;

            if (msg->what == what) {
                *p_msg = msg->next;



                msg_free_res(msg);
                msg->next = q->recycle_msg;
                q->recycle_msg = msg;

                q->nb_messages--;
            } else {
                last_msg = msg;
                p_msg = &msg->next;
            }
        }

        if (q->first_msg) {
            q->last_msg = last_msg;
        } else {
            q->last_msg = ((void*)0);
        }
    }

    SDL_UnlockMutex(q->mutex);
}
