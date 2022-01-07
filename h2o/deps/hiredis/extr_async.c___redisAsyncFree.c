
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int flags; } ;
typedef TYPE_2__ redisContext ;
typedef int redisCallback ;
struct TYPE_10__ {int patterns; int channels; int invalid; } ;
struct TYPE_12__ {scalar_t__ err; int (* onDisconnect ) (TYPE_3__*,scalar_t__) ;TYPE_1__ sub; int replies; TYPE_2__ c; } ;
typedef TYPE_3__ redisAsyncContext ;
typedef int dictIterator ;
typedef int dictEntry ;


 int REDIS_CONNECTED ;
 scalar_t__ REDIS_ERR ;
 int REDIS_FREEING ;
 scalar_t__ REDIS_OK ;
 int _EL_CLEANUP (TYPE_3__*) ;
 int __redisRunCallback (TYPE_3__*,int *,int *) ;
 scalar_t__ __redisShiftCallback (int *,int *) ;
 int * dictGetEntryVal (int *) ;
 int * dictGetIterator (int ) ;
 int * dictNext (int *) ;
 int dictRelease (int ) ;
 int dictReleaseIterator (int *) ;
 int redisFree (TYPE_2__*) ;
 int stub1 (TYPE_3__*,scalar_t__) ;
 int stub2 (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static void __redisAsyncFree(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);
    redisCallback cb;
    dictIterator *it;
    dictEntry *de;


    while (__redisShiftCallback(&ac->replies,&cb) == REDIS_OK)
        __redisRunCallback(ac,&cb,((void*)0));


    while (__redisShiftCallback(&ac->sub.invalid,&cb) == REDIS_OK)
        __redisRunCallback(ac,&cb,((void*)0));


    it = dictGetIterator(ac->sub.channels);
    while ((de = dictNext(it)) != ((void*)0))
        __redisRunCallback(ac,dictGetEntryVal(de),((void*)0));
    dictReleaseIterator(it);
    dictRelease(ac->sub.channels);

    it = dictGetIterator(ac->sub.patterns);
    while ((de = dictNext(it)) != ((void*)0))
        __redisRunCallback(ac,dictGetEntryVal(de),((void*)0));
    dictReleaseIterator(it);
    dictRelease(ac->sub.patterns);


    _EL_CLEANUP(ac);



    if (ac->onDisconnect && (c->flags & REDIS_CONNECTED)) {
        if (c->flags & REDIS_FREEING) {
            ac->onDisconnect(ac,REDIS_OK);
        } else {
            ac->onDisconnect(ac,(ac->err == 0) ? REDIS_OK : REDIS_ERR);
        }
    }


    redisFree(c);
}
