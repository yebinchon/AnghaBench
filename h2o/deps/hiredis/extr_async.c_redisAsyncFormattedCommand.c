
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisCallbackFn ;
typedef int redisAsyncContext ;


 int __redisAsyncCommand (int *,int *,void*,char const*,size_t) ;

int redisAsyncFormattedCommand(redisAsyncContext *ac, redisCallbackFn *fn, void *privdata, const char *cmd, size_t len) {
    int status = __redisAsyncCommand(ac,fn,privdata,cmd,len);
    return status;
}
