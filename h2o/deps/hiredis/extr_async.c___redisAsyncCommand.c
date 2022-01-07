
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sds ;
struct TYPE_11__ {int flags; } ;
typedef TYPE_2__ redisContext ;
typedef int redisCallbackFn ;
struct TYPE_12__ {void* privdata; int * fn; } ;
typedef TYPE_3__ redisCallback ;
struct TYPE_10__ {int invalid; int channels; int patterns; } ;
struct TYPE_13__ {int replies; TYPE_1__ sub; TYPE_2__ c; } ;
typedef TYPE_4__ redisAsyncContext ;


 int REDIS_DISCONNECTING ;
 int REDIS_ERR ;
 int REDIS_FREEING ;
 int REDIS_MONITORING ;
 int REDIS_OK ;
 int REDIS_SUBSCRIBED ;
 int _EL_ADD_WRITE (TYPE_4__*) ;
 int __redisAppendCommand (TYPE_2__*,char const*,size_t) ;
 int __redisPushCallback (int *,TYPE_3__*) ;
 int assert (int ) ;
 int dictReplace (int ,int ,TYPE_3__*) ;
 char* nextArgument (char const*,char const**,size_t*) ;
 int sdsfree (int ) ;
 int sdsnewlen (char const*,size_t) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 char tolower (char const) ;

__attribute__((used)) static int __redisAsyncCommand(redisAsyncContext *ac, redisCallbackFn *fn, void *privdata, const char *cmd, size_t len) {
    redisContext *c = &(ac->c);
    redisCallback cb;
    int pvariant, hasnext;
    const char *cstr, *astr;
    size_t clen, alen;
    const char *p;
    sds sname;
    int ret;


    if (c->flags & (REDIS_DISCONNECTING | REDIS_FREEING)) return REDIS_ERR;


    cb.fn = fn;
    cb.privdata = privdata;


    p = nextArgument(cmd,&cstr,&clen);
    assert(p != ((void*)0));
    hasnext = (p[0] == '$');
    pvariant = (tolower(cstr[0]) == 'p') ? 1 : 0;
    cstr += pvariant;
    clen -= pvariant;

    if (hasnext && strncasecmp(cstr,"subscribe\r\n",11) == 0) {
        c->flags |= REDIS_SUBSCRIBED;


        while ((p = nextArgument(p,&astr,&alen)) != ((void*)0)) {
            sname = sdsnewlen(astr,alen);
            if (pvariant)
                ret = dictReplace(ac->sub.patterns,sname,&cb);
            else
                ret = dictReplace(ac->sub.channels,sname,&cb);

            if (ret == 0) sdsfree(sname);
        }
    } else if (strncasecmp(cstr,"unsubscribe\r\n",13) == 0) {


        if (!(c->flags & REDIS_SUBSCRIBED)) return REDIS_ERR;




     } else if(strncasecmp(cstr,"monitor\r\n",9) == 0) {

         c->flags |= REDIS_MONITORING;
         __redisPushCallback(&ac->replies,&cb);
    } else {
        if (c->flags & REDIS_SUBSCRIBED)


            __redisPushCallback(&ac->sub.invalid,&cb);
        else
            __redisPushCallback(&ac->replies,&cb);
    }

    __redisAppendCommand(c,cmd,len);


    _EL_ADD_WRITE(ac);

    return REDIS_OK;
}
