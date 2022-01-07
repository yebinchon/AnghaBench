
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int redisDisconnectCallback ;
struct TYPE_3__ {int * onDisconnect; } ;
typedef TYPE_1__ redisAsyncContext ;


 int REDIS_ERR ;
 int REDIS_OK ;

int redisAsyncSetDisconnectCallback(redisAsyncContext *ac, redisDisconnectCallback *fn) {
    if (ac->onDisconnect == ((void*)0)) {
        ac->onDisconnect = fn;
        return REDIS_OK;
    }
    return REDIS_ERR;
}
