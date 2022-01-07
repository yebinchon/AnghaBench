
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int fd; } ;
typedef TYPE_1__ redisContext ;


 scalar_t__ EINTR ;
 scalar_t__ ETIMEDOUT ;
 scalar_t__ EWOULDBLOCK ;
 int REDIS_BLOCK ;
 int REDIS_ERR_EOF ;
 int REDIS_ERR_IO ;
 int REDIS_ERR_TIMEOUT ;
 int __redisSetError (TYPE_1__*,int ,char*) ;
 scalar_t__ errno ;
 int recv (int ,char*,size_t,int ) ;

int redisNetRead(redisContext *c, char *buf, size_t bufcap) {
    int nread = recv(c->fd, buf, bufcap, 0);
    if (nread == -1) {
        if ((errno == EWOULDBLOCK && !(c->flags & REDIS_BLOCK)) || (errno == EINTR)) {

            return 0;
        } else if(errno == ETIMEDOUT && (c->flags & REDIS_BLOCK)) {

            __redisSetError(c, REDIS_ERR_TIMEOUT, "recv timeout");
            return -1;
        } else {
            __redisSetError(c, REDIS_ERR_IO, ((void*)0));
            return -1;
        }
    } else if (nread == 0) {
        __redisSetError(c, REDIS_ERR_EOF, "Server closed the connection");
        return -1;
    } else {
        return nread;
    }
}
