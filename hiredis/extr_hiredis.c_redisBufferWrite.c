
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int obuf; TYPE_1__* funcs; scalar_t__ err; } ;
typedef TYPE_2__ redisContext ;
struct TYPE_5__ {int (* write ) (TYPE_2__*) ;} ;


 int REDIS_ERR ;
 int REDIS_OK ;
 int sdsempty () ;
 int sdsfree (int ) ;
 scalar_t__ sdslen (int ) ;
 int sdsrange (int ,int,int) ;
 int stub1 (TYPE_2__*) ;

int redisBufferWrite(redisContext *c, int *done) {


    if (c->err)
        return REDIS_ERR;

    if (sdslen(c->obuf) > 0) {
        int nwritten = c->funcs->write(c);
        if (nwritten < 0) {
            return REDIS_ERR;
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
