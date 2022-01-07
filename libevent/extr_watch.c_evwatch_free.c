
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct evwatch {size_t type; TYPE_1__* base; } ;
struct TYPE_3__ {int * watchers; } ;


 int EVBASE_ACQUIRE_LOCK (TYPE_1__*,int ) ;
 int EVBASE_RELEASE_LOCK (TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,struct evwatch*,int ) ;
 int mm_free (struct evwatch*) ;
 int next ;
 int th_base_lock ;

void
evwatch_free(struct evwatch *watcher)
{
 EVBASE_ACQUIRE_LOCK(watcher->base, th_base_lock);
 TAILQ_REMOVE(&watcher->base->watchers[watcher->type], watcher, next);
 EVBASE_RELEASE_LOCK(watcher->base, th_base_lock);
 mm_free(watcher);
}
