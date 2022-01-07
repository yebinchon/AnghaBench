
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * sds ;
struct TYPE_4__ {int * obuf; } ;
typedef TYPE_1__ redisContext ;


 int REDIS_ERR ;
 int REDIS_ERR_OOM ;
 int REDIS_OK ;
 int __redisSetError (TYPE_1__*,int ,char*) ;
 int * sdscatlen (int *,char const*,size_t) ;

int __redisAppendCommand(redisContext *c, const char *cmd, size_t len) {
    sds newbuf;

    newbuf = sdscatlen(c->obuf,cmd,len);
    if (newbuf == ((void*)0)) {
        __redisSetError(c,REDIS_ERR_OOM,"Out of memory");
        return REDIS_ERR;
    }

    c->obuf = newbuf;
    return REDIS_OK;
}
