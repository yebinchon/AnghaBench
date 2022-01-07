
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisContext ;


 int REDIS_ERR ;
 int REDIS_KEEPALIVE_INTERVAL ;
 scalar_t__ REDIS_OK ;
 scalar_t__ redisKeepAlive (int *,int ) ;

int redisEnableKeepAlive(redisContext *c) {
    if (redisKeepAlive(c, REDIS_KEEPALIVE_INTERVAL) != REDIS_OK)
        return REDIS_ERR;
    return REDIS_OK;
}
