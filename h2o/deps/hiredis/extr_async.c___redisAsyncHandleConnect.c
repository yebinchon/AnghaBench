
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
typedef TYPE_1__ redisContext ;
struct TYPE_9__ {int (* onConnect ) (TYPE_2__*,int) ;TYPE_1__ c; } ;
typedef TYPE_2__ redisAsyncContext ;


 scalar_t__ EINPROGRESS ;
 int REDIS_CONNECTED ;
 scalar_t__ REDIS_ERR ;
 int REDIS_OK ;
 int __redisAsyncDisconnect (TYPE_2__*) ;
 scalar_t__ errno ;
 scalar_t__ redisCheckSocketError (TYPE_1__*) ;
 int stub1 (TYPE_2__*,scalar_t__) ;
 int stub2 (TYPE_2__*,int) ;

__attribute__((used)) static int __redisAsyncHandleConnect(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);

    if (redisCheckSocketError(c) == REDIS_ERR) {

        if (errno == EINPROGRESS)
            return REDIS_OK;

        if (ac->onConnect) ac->onConnect(ac,REDIS_ERR);
        __redisAsyncDisconnect(ac);
        return REDIS_ERR;
    }


    c->flags |= REDIS_CONNECTED;
    if (ac->onConnect) ac->onConnect(ac,REDIS_OK);
    return REDIS_OK;
}
