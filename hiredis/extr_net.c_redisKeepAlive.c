
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int val ;
typedef int redisFD ;
struct TYPE_4__ {int fd; } ;
typedef TYPE_1__ redisContext ;


 int IPPROTO_TCP ;
 int REDIS_ERR ;
 int REDIS_ERR_OTHER ;
 int REDIS_OK ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int TCP_KEEPALIVE ;
 int TCP_KEEPCNT ;
 int TCP_KEEPIDLE ;
 int TCP_KEEPINTVL ;
 int __redisSetError (TYPE_1__*,int ,int ) ;
 int errno ;
 int setsockopt (int ,int ,int ,int*,int) ;
 int strerror (int ) ;

int redisKeepAlive(redisContext *c, int interval) {
    int val = 1;
    redisFD fd = c->fd;

    if (setsockopt(fd, SOL_SOCKET, SO_KEEPALIVE, &val, sizeof(val)) == -1){
        __redisSetError(c,REDIS_ERR_OTHER,strerror(errno));
        return REDIS_ERR;
    }

    val = interval;
    return REDIS_OK;
}
