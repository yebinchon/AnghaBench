
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ redisContext ;
struct TYPE_7__ {scalar_t__ err; int replies; TYPE_1__ c; } ;
typedef TYPE_2__ redisAsyncContext ;


 int REDIS_DISCONNECTING ;
 int REDIS_ERR ;
 int __redisAsyncCopyError (TYPE_2__*) ;
 int __redisAsyncFree (TYPE_2__*) ;
 int __redisShiftCallback (int *,int *) ;
 int assert (int) ;

__attribute__((used)) static void __redisAsyncDisconnect(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);


    __redisAsyncCopyError(ac);

    if (ac->err == 0) {

        int ret = __redisShiftCallback(&ac->replies,((void*)0));
        assert(ret == REDIS_ERR);
    } else {


        c->flags |= REDIS_DISCONNECTING;
    }



    __redisAsyncFree(ac);
}
