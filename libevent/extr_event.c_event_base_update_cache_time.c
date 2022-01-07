
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {scalar_t__ running_loop; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 struct event_base* current_base ;
 int th_base_lock ;
 int update_time_cache (struct event_base*) ;

int
event_base_update_cache_time(struct event_base *base)
{

 if (!base) {
  base = current_base;
  if (!current_base)
   return -1;
 }

 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 if (base->running_loop)
  update_time_cache(base);
 EVBASE_RELEASE_LOCK(base, th_base_lock);
 return 0;
}
