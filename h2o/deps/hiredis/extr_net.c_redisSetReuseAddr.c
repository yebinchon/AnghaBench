
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
typedef TYPE_1__ redisContext ;
typedef int on ;


 int REDIS_ERR ;
 int REDIS_ERR_IO ;
 int REDIS_OK ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int __redisSetErrorFromErrno (TYPE_1__*,int ,int *) ;
 int redisContextCloseFd (TYPE_1__*) ;
 int setsockopt (int ,int ,int ,int*,int) ;

__attribute__((used)) static int redisSetReuseAddr(redisContext *c) {
    int on = 1;
    if (setsockopt(c->fd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) == -1) {
        __redisSetErrorFromErrno(c,REDIS_ERR_IO,((void*)0));
        redisContextCloseFd(c);
        return REDIS_ERR;
    }
    return REDIS_OK;
}
