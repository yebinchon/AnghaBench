
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int abort_request; int cond; int mutex; } ;
typedef TYPE_1__ MessageQueue ;


 int SDL_CreateCond () ;
 int SDL_CreateMutex () ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) inline static void msg_queue_init(MessageQueue *q)
{
    memset(q, 0, sizeof(MessageQueue));
    q->mutex = SDL_CreateMutex();
    q->cond = SDL_CreateCond();
    q->abort_request = 1;
}
