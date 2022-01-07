
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int flags; } ;
typedef TYPE_5__ redisContext ;
struct TYPE_13__ {int * tail; int * head; } ;
struct TYPE_14__ {void* patterns; void* channels; TYPE_3__ invalid; } ;
struct TYPE_12__ {int * tail; int * head; } ;
struct TYPE_11__ {int * scheduleTimer; int * cleanup; int * delWrite; int * addWrite; int * delRead; int * addRead; int * data; } ;
struct TYPE_16__ {TYPE_4__ sub; TYPE_2__ replies; int * onDisconnect; int * onConnect; TYPE_1__ ev; int * data; int * errstr; scalar_t__ err; TYPE_5__ c; } ;
typedef TYPE_6__ redisAsyncContext ;


 int REDIS_CONNECTED ;
 int callbackDict ;
 void* dictCreate (int *,int *) ;
 TYPE_6__* realloc (TYPE_5__*,int) ;

__attribute__((used)) static redisAsyncContext *redisAsyncInitialize(redisContext *c) {
    redisAsyncContext *ac;

    ac = realloc(c,sizeof(redisAsyncContext));
    if (ac == ((void*)0))
        return ((void*)0);

    c = &(ac->c);




    c->flags &= ~REDIS_CONNECTED;

    ac->err = 0;
    ac->errstr = ((void*)0);
    ac->data = ((void*)0);

    ac->ev.data = ((void*)0);
    ac->ev.addRead = ((void*)0);
    ac->ev.delRead = ((void*)0);
    ac->ev.addWrite = ((void*)0);
    ac->ev.delWrite = ((void*)0);
    ac->ev.cleanup = ((void*)0);
    ac->ev.scheduleTimer = ((void*)0);

    ac->onConnect = ((void*)0);
    ac->onDisconnect = ((void*)0);

    ac->replies.head = ((void*)0);
    ac->replies.tail = ((void*)0);
    ac->sub.invalid.head = ((void*)0);
    ac->sub.invalid.tail = ((void*)0);
    ac->sub.channels = dictCreate(&callbackDict,((void*)0));
    ac->sub.patterns = dictCreate(&callbackDict,((void*)0));
    return ac;
}
