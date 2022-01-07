
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;
typedef int redisCallbackFn ;
typedef int redisAsyncContext ;


 int REDIS_ERR ;
 int __redisAsyncCommand (int *,int *,void*,int ,int) ;
 int redisFormatSdsCommandArgv (int *,int,char const**,size_t const*) ;
 int sdsfree (int ) ;

int redisAsyncCommandArgv(redisAsyncContext *ac, redisCallbackFn *fn, void *privdata, int argc, const char **argv, const size_t *argvlen) {
    sds cmd;
    int len;
    int status;
    len = redisFormatSdsCommandArgv(&cmd,argc,argv,argvlen);
    if (len < 0)
        return REDIS_ERR;
    status = __redisAsyncCommand(ac,fn,privdata,cmd,len);
    sdsfree(cmd);
    return status;
}
