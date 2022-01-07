
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union evwatch_cb {int dummy; } evwatch_cb ;
struct evwatch {unsigned int type; void* arg; union evwatch_cb callback; struct event_base* base; } ;
struct event_base {int * watchers; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct evwatch*,int ) ;
 struct evwatch* mm_malloc (int) ;
 int next ;
 int th_base_lock ;

__attribute__((used)) static inline struct evwatch *
evwatch_new(struct event_base *base, union evwatch_cb callback, void *arg, unsigned type)
{
 struct evwatch *watcher = mm_malloc(sizeof(struct evwatch));
 if (!watcher)
  return ((void*)0);
 watcher->base = base;
 watcher->type = type;
 watcher->callback = callback;
 watcher->arg = arg;
 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 TAILQ_INSERT_TAIL(&base->watchers[type], watcher, next);
 EVBASE_RELEASE_LOCK(base, th_base_lock);
 return watcher;
}
