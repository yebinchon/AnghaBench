
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisContext ;
typedef int redisAsyncContext ;


 int __redisAsyncCopyError (int *) ;
 int * redisAsyncInitialize (int *) ;
 int * redisConnectBindNonBlockWithReuse (char const*,int,char const*) ;

redisAsyncContext *redisAsyncConnectBindWithReuse(const char *ip, int port,
                                                  const char *source_addr) {
    redisContext *c = redisConnectBindNonBlockWithReuse(ip,port,source_addr);
    redisAsyncContext *ac = redisAsyncInitialize(c);
    __redisAsyncCopyError(ac);
    return ac;
}
