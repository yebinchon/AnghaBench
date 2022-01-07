
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ redisOptions ;
typedef int redisAsyncContext ;


 int REDIS_OPTIONS_SET_UNIX (TYPE_1__*,char const*) ;
 int * redisAsyncConnectWithOptions (TYPE_1__*) ;

redisAsyncContext *redisAsyncConnectUnix(const char *path) {
    redisOptions options = {0};
    REDIS_OPTIONS_SET_UNIX(&options, path);
    return redisAsyncConnectWithOptions(&options);
}
