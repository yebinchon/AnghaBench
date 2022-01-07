
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisContext ;
typedef int redisAsyncContext ;


 int __redisAsyncCopyError (int *) ;
 int * redisAsyncInitialize (int *) ;
 int * redisConnectUnixNonBlock (char const*) ;
 int redisFree (int *) ;

redisAsyncContext *redisAsyncConnectUnix(const char *path) {
    redisContext *c;
    redisAsyncContext *ac;

    c = redisConnectUnixNonBlock(path);
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
