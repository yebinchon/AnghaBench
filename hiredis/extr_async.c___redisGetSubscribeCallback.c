
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int sds ;
struct TYPE_16__ {scalar_t__ type; int elements; TYPE_1__** element; } ;
typedef TYPE_3__ redisReply ;
struct TYPE_17__ {int flags; } ;
typedef TYPE_4__ redisContext ;
struct TYPE_18__ {scalar_t__ pending_subs; } ;
typedef TYPE_5__ redisCallback ;
struct TYPE_15__ {int invalid; int * patterns; int * channels; } ;
struct TYPE_19__ {TYPE_2__ sub; TYPE_4__ c; } ;
typedef TYPE_6__ redisAsyncContext ;
typedef int dictEntry ;
typedef int dict ;
struct TYPE_14__ {scalar_t__ type; char* str; scalar_t__ integer; int len; } ;


 int REDIS_OK ;
 scalar_t__ REDIS_REPLY_ARRAY ;
 scalar_t__ REDIS_REPLY_INTEGER ;
 scalar_t__ REDIS_REPLY_STRING ;
 int REDIS_SUBSCRIBED ;
 int __redisShiftCallback (int *,TYPE_5__*) ;
 int assert (int) ;
 int dictDelete (int *,int ) ;
 int * dictFind (int *,int ) ;
 TYPE_5__* dictGetEntryVal (int *) ;
 scalar_t__ dictSize (int *) ;
 int memcpy (TYPE_5__*,TYPE_5__*,int) ;
 int sdsfree (int ) ;
 int sdsnewlen (char*,int ) ;
 scalar_t__ strcasecmp (char*,char*) ;
 char tolower (char) ;

__attribute__((used)) static int __redisGetSubscribeCallback(redisAsyncContext *ac, redisReply *reply, redisCallback *dstcb) {
    redisContext *c = &(ac->c);
    dict *callbacks;
    redisCallback *cb;
    dictEntry *de;
    int pvariant;
    char *stype;
    sds sname;



    if (reply->type == REDIS_REPLY_ARRAY) {
        assert(reply->elements >= 2);
        assert(reply->element[0]->type == REDIS_REPLY_STRING);
        stype = reply->element[0]->str;
        pvariant = (tolower(stype[0]) == 'p') ? 1 : 0;

        if (pvariant)
            callbacks = ac->sub.patterns;
        else
            callbacks = ac->sub.channels;


        assert(reply->element[1]->type == REDIS_REPLY_STRING);
        sname = sdsnewlen(reply->element[1]->str,reply->element[1]->len);
        de = dictFind(callbacks,sname);
        if (de != ((void*)0)) {
            cb = dictGetEntryVal(de);


            if (strcasecmp(stype+pvariant,"subscribe") == 0) {
                cb->pending_subs -= 1;
            }

            memcpy(dstcb,cb,sizeof(*dstcb));


            if (strcasecmp(stype+pvariant,"unsubscribe") == 0) {
                if (cb->pending_subs == 0)
                    dictDelete(callbacks,sname);



                assert(reply->element[2]->type == REDIS_REPLY_INTEGER);


                if (reply->element[2]->integer == 0
                    && dictSize(ac->sub.channels) == 0
                    && dictSize(ac->sub.patterns) == 0)
                    c->flags &= ~REDIS_SUBSCRIBED;
            }
        }
        sdsfree(sname);
    } else {

        __redisShiftCallback(&ac->sub.invalid,dstcb);
    }
    return REDIS_OK;
}
