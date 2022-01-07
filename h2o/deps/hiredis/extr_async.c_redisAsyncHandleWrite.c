
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int flags; } ;
typedef TYPE_1__ redisContext ;
struct TYPE_11__ {TYPE_1__ c; } ;
typedef TYPE_2__ redisAsyncContext ;


 int REDIS_CONNECTED ;
 scalar_t__ REDIS_ERR ;
 scalar_t__ REDIS_OK ;
 int _EL_ADD_READ (TYPE_2__*) ;
 int _EL_ADD_WRITE (TYPE_2__*) ;
 int _EL_DEL_WRITE (TYPE_2__*) ;
 int __redisAsyncDisconnect (TYPE_2__*) ;
 scalar_t__ __redisAsyncHandleConnect (TYPE_2__*) ;
 scalar_t__ redisBufferWrite (TYPE_1__*,int*) ;

void redisAsyncHandleWrite(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);
    int done = 0;

    if (!(c->flags & REDIS_CONNECTED)) {

        if (__redisAsyncHandleConnect(ac) != REDIS_OK)
            return;

        if (!(c->flags & REDIS_CONNECTED))
            return;
    }

    if (redisBufferWrite(c,&done) == REDIS_ERR) {
        __redisAsyncDisconnect(ac);
    } else {

        if (!done)
            _EL_ADD_WRITE(ac);
        else
            _EL_DEL_WRITE(ac);


        _EL_ADD_READ(ac);
    }
}
