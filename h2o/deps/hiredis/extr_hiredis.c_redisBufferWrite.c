
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int obuf; int fd; scalar_t__ err; } ;
typedef TYPE_1__ redisContext ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int REDIS_BLOCK ;
 int REDIS_ERR ;
 int REDIS_ERR_IO ;
 int REDIS_OK ;
 int __redisSetError (TYPE_1__*,int ,int *) ;
 scalar_t__ errno ;
 int sdsempty () ;
 int sdsfree (int ) ;
 scalar_t__ sdslen (int ) ;
 int sdsrange (int ,int,int) ;
 int write (int ,int ,scalar_t__) ;

int redisBufferWrite(redisContext *c, int *done) {
    int nwritten;


    if (c->err)
        return REDIS_ERR;

    if (sdslen(c->obuf) > 0) {
        nwritten = write(c->fd,c->obuf,sdslen(c->obuf));
        if (nwritten == -1) {
            if ((errno == EAGAIN && !(c->flags & REDIS_BLOCK)) || (errno == EINTR)) {

            } else {
                __redisSetError(c,REDIS_ERR_IO,((void*)0));
                return REDIS_ERR;
            }
        } else if (nwritten > 0) {
            if (nwritten == (signed)sdslen(c->obuf)) {
                sdsfree(c->obuf);
                c->obuf = sdsempty();
            } else {
                sdsrange(c->obuf,nwritten,-1);
            }
        }
    }
    if (done != ((void*)0)) *done = (sdslen(c->obuf) == 0);
    return REDIS_OK;
}
