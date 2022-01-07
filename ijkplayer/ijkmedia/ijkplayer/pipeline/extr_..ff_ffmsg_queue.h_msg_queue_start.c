
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int what; } ;
struct TYPE_7__ {int mutex; scalar_t__ abort_request; } ;
typedef TYPE_1__ MessageQueue ;
typedef TYPE_2__ AVMessage ;


 int FFP_MSG_FLUSH ;
 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int msg_init_msg (TYPE_2__*) ;
 int msg_queue_put_private (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) inline static void msg_queue_start(MessageQueue *q)
{
    SDL_LockMutex(q->mutex);
    q->abort_request = 0;

    AVMessage msg;
    msg_init_msg(&msg);
    msg.what = FFP_MSG_FLUSH;
    msg_queue_put_private(q, &msg);
    SDL_UnlockMutex(q->mutex);
}
