
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int options; } ;
typedef TYPE_1__ redisOptions ;
typedef int redisContext ;
typedef int redisAsyncContext ;


 int REDIS_OPT_NONBLOCK ;
 int __redisAsyncCopyError (int *) ;
 int * redisAsyncInitialize (int *) ;
 int * redisConnectWithOptions (TYPE_1__*) ;
 int redisFree (int *) ;

redisAsyncContext *redisAsyncConnectWithOptions(const redisOptions *options) {
    redisOptions myOptions = *options;
    redisContext *c;
    redisAsyncContext *ac;

    myOptions.options |= REDIS_OPT_NONBLOCK;
    c = redisConnectWithOptions(&myOptions);
    if (c == ((void*)0)) {
        return ((void*)0);
    }
    ac = redisAsyncInitialize(c);
    if (ac == ((void*)0)) {
        redisFree(c);
        return ((void*)0);
    }
    __redisAsyncCopyError(ac);
    return ac;
}
