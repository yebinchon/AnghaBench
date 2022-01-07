
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* str; } ;
typedef TYPE_1__ redisReply ;
typedef int redisAsyncContext ;


 int printf (char*,char*,char*) ;
 int redisAsyncDisconnect (int *) ;

void getCallback(redisAsyncContext *c, void *r, void *privdata) {
    redisReply *reply = r;
    if (reply == ((void*)0)) return;
    printf("argv[%s]: %s\n", (char*)privdata, reply->str);


    redisAsyncDisconnect(c);
}
