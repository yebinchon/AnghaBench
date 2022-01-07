
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; int ridx; int pos; int * reply; int buf; scalar_t__ err; int privdata; TYPE_1__* rstack; } ;
typedef TYPE_2__ redisReader ;
struct TYPE_5__ {int type; int elements; int idx; int privdata; int * parent; int * obj; } ;


 int REDIS_ERR ;
 int REDIS_OK ;
 int processItem (TYPE_2__*) ;
 scalar_t__ sdslen (int ) ;
 int sdsrange (int ,int,int) ;

int redisReaderGetReply(redisReader *r, void **reply) {

    if (reply != ((void*)0))
        *reply = ((void*)0);


    if (r->err)
        return REDIS_ERR;


    if (r->len == 0)
        return REDIS_OK;


    if (r->ridx == -1) {
        r->rstack[0].type = -1;
        r->rstack[0].elements = -1;
        r->rstack[0].idx = -1;
        r->rstack[0].obj = ((void*)0);
        r->rstack[0].parent = ((void*)0);
        r->rstack[0].privdata = r->privdata;
        r->ridx = 0;
    }


    while (r->ridx >= 0)
        if (processItem(r) != REDIS_OK)
            break;


    if (r->err)
        return REDIS_ERR;



    if (r->pos >= 1024) {
        sdsrange(r->buf,r->pos,-1);
        r->pos = 0;
        r->len = sdslen(r->buf);
    }


    if (r->ridx == -1) {
        if (reply != ((void*)0))
            *reply = r->reply;
        r->reply = ((void*)0);
    }
    return REDIS_OK;
}
