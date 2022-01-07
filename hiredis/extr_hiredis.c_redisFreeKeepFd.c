
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int redisFD ;
struct TYPE_4__ {int fd; } ;
typedef TYPE_1__ redisContext ;


 int REDIS_INVALID_FD ;
 int redisFree (TYPE_1__*) ;

redisFD redisFreeKeepFd(redisContext *c) {
    redisFD fd = c->fd;
    c->fd = REDIS_INVALID_FD;
    redisFree(c);
    return fd;
}
