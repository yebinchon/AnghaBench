
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisContext ;
typedef int redisAsyncContext ;


 int __redisAsyncCopyError (int *) ;
 int * redisAsyncInitialize (int *) ;
 int * redisConnectNonBlock (char const*,int) ;
 int redisFree (int *) ;

redisAsyncContext *redisAsyncConnect(const char *ip, int port) {
    redisContext *c;
    redisAsyncContext *ac;

    c = redisConnectNonBlock(ip,port);
    if (c == ((void*)0))
        return ((void*)0);

    ac = redisAsyncInitialize(c);
    if (ac == ((void*)0)) {
        redisFree(c);
        return ((void*)0);
    }

    __redisAsyncCopyError(ac);
    return ac;
}
