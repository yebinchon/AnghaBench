
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int obuf; int fd; } ;
typedef TYPE_1__ redisContext ;


 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int REDIS_BLOCK ;
 int REDIS_ERR_IO ;
 int __redisSetError (TYPE_1__*,int ,int *) ;
 scalar_t__ errno ;
 int sdslen (int ) ;
 int send (int ,int ,int ,int ) ;

int redisNetWrite(redisContext *c) {
    int nwritten = send(c->fd, c->obuf, sdslen(c->obuf), 0);
    if (nwritten < 0) {
        if ((errno == EWOULDBLOCK && !(c->flags & REDIS_BLOCK)) || (errno == EINTR)) {

        } else {
            __redisSetError(c, REDIS_ERR_IO, ((void*)0));
            return -1;
        }
    }
    return nwritten;
}
