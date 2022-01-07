
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int yes ;
struct TYPE_5__ {int fd; } ;
typedef TYPE_1__ redisContext ;


 int IPPROTO_TCP ;
 int REDIS_ERR ;
 int REDIS_ERR_IO ;
 int REDIS_OK ;
 int TCP_NODELAY ;
 int __redisSetErrorFromErrno (TYPE_1__*,int ,char*) ;
 int redisContextCloseFd (TYPE_1__*) ;
 int setsockopt (int ,int ,int ,int*,int) ;

__attribute__((used)) static int redisSetTcpNoDelay(redisContext *c) {
    int yes = 1;
    if (setsockopt(c->fd, IPPROTO_TCP, TCP_NODELAY, &yes, sizeof(yes)) == -1) {
        __redisSetErrorFromErrno(c,REDIS_ERR_IO,"setsockopt(TCP_NODELAY)");
        redisContextCloseFd(c);
        return REDIS_ERR;
    }
    return REDIS_OK;
}
