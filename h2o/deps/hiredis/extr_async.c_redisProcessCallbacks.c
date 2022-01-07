
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ type; char* str; } ;
typedef TYPE_3__ redisReply ;
struct TYPE_22__ {int flags; TYPE_2__* reader; int errstr; int err; int obuf; } ;
typedef TYPE_4__ redisContext ;
struct TYPE_23__ {int * fn; int * member_2; int * member_1; int * member_0; } ;
typedef TYPE_5__ redisCallback ;
struct TYPE_25__ {int * head; } ;
struct TYPE_24__ {TYPE_9__ replies; TYPE_4__ c; } ;
typedef TYPE_6__ redisAsyncContext ;
struct TYPE_20__ {TYPE_1__* fn; } ;
struct TYPE_19__ {int (* freeObject ) (void*) ;} ;


 int REDIS_DISCONNECTING ;
 int REDIS_ERR_OTHER ;
 int REDIS_FREEING ;
 int REDIS_MONITORING ;
 int REDIS_OK ;
 scalar_t__ REDIS_REPLY_ERROR ;
 int REDIS_SUBSCRIBED ;
 int __redisAsyncDisconnect (TYPE_6__*) ;
 int __redisAsyncFree (TYPE_6__*) ;
 int __redisGetSubscribeCallback (TYPE_6__*,void*,TYPE_5__*) ;
 int __redisPushCallback (TYPE_9__*,TYPE_5__*) ;
 int __redisRunCallback (TYPE_6__*,TYPE_5__*,void*) ;
 int __redisShiftCallback (TYPE_9__*,TYPE_5__*) ;
 int assert (int) ;
 int redisGetReply (TYPE_4__*,void**) ;
 scalar_t__ sdslen (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int stub1 (void*) ;
 int stub2 (void*) ;
 int stub3 (void*) ;

void redisProcessCallbacks(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);
    redisCallback cb = {((void*)0), ((void*)0), ((void*)0)};
    void *reply = ((void*)0);
    int status;

    while((status = redisGetReply(c,&reply)) == REDIS_OK) {
        if (reply == ((void*)0)) {


            if (c->flags & REDIS_DISCONNECTING && sdslen(c->obuf) == 0
                && ac->replies.head == ((void*)0)) {
                __redisAsyncDisconnect(ac);
                return;
            }


            if(c->flags & REDIS_MONITORING) {
                __redisPushCallback(&ac->replies,&cb);
            }



            break;
        }



        if (__redisShiftCallback(&ac->replies,&cb) != REDIS_OK) {
            if (((redisReply*)reply)->type == REDIS_REPLY_ERROR) {
                c->err = REDIS_ERR_OTHER;
                snprintf(c->errstr,sizeof(c->errstr),"%s",((redisReply*)reply)->str);
                c->reader->fn->freeObject(reply);
                __redisAsyncDisconnect(ac);
                return;
            }

            assert((c->flags & REDIS_SUBSCRIBED || c->flags & REDIS_MONITORING));
            if(c->flags & REDIS_SUBSCRIBED)
                __redisGetSubscribeCallback(ac,reply,&cb);
        }

        if (cb.fn != ((void*)0)) {
            __redisRunCallback(ac,&cb,reply);
            c->reader->fn->freeObject(reply);


            if (c->flags & REDIS_FREEING) {
                __redisAsyncFree(ac);
                return;
            }
        } else {




            c->reader->fn->freeObject(reply);
        }
    }


    if (status != REDIS_OK)
        __redisAsyncDisconnect(ac);
}
