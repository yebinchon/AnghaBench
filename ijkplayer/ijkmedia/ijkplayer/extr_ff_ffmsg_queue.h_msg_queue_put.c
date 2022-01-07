
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ MessageQueue ;
typedef int AVMessage ;


 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int msg_queue_put_private (TYPE_1__*,int *) ;

__attribute__((used)) inline static int msg_queue_put(MessageQueue *q, AVMessage *msg)
{
    int ret;

    SDL_LockMutex(q->mutex);
    ret = msg_queue_put_private(q, msg);
    SDL_UnlockMutex(q->mutex);

    return ret;
}
