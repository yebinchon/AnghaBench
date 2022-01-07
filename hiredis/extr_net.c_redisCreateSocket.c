
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int redisFD ;
struct TYPE_5__ {int fd; } ;
typedef TYPE_1__ redisContext ;


 int AF_INET ;
 int REDIS_ERR ;
 int REDIS_ERR_IO ;
 int REDIS_INVALID_FD ;
 int REDIS_OK ;
 int SOCK_STREAM ;
 int __redisSetErrorFromErrno (TYPE_1__*,int ,int *) ;
 int redisSetReuseAddr (TYPE_1__*) ;
 int socket (int,int ,int ) ;

__attribute__((used)) static int redisCreateSocket(redisContext *c, int type) {
    redisFD s;
    if ((s = socket(type, SOCK_STREAM, 0)) == REDIS_INVALID_FD) {
        __redisSetErrorFromErrno(c,REDIS_ERR_IO,((void*)0));
        return REDIS_ERR;
    }
    c->fd = s;
    if (type == AF_INET) {
        if (redisSetReuseAddr(c) == REDIS_ERR) {
            return REDIS_ERR;
        }
    }
    return REDIS_OK;
}
