
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* str; } ;
typedef TYPE_1__ redisReply ;
struct TYPE_6__ {char* errstr; } ;
typedef TYPE_2__ redisAsyncContext ;


 int printf (char*,char*,...) ;
 int redisAsyncDisconnect (TYPE_2__*) ;

void getCallback(redisAsyncContext *c, void *r, void *privdata) {
    redisReply *reply = r;
    if (reply == ((void*)0)) {
        if (c->errstr) {
            printf("errstr: %s\n", c->errstr);
        }
        return;
    }
    printf("argv[%s]: %s\n", (char*)privdata, reply->str);


    redisAsyncDisconnect(c);
}
