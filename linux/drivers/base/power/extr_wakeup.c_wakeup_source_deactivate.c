
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {scalar_t__ relax_count; scalar_t__ active_count; int active; void* max_time; int name; scalar_t__ autosleep_enabled; scalar_t__ timer_expires; int timer; void* last_time; int total_time; } ;
typedef void* ktime_t ;


 int MAX_IN_PROGRESS ;
 unsigned int atomic_add_return (int ,int *) ;
 int combined_event_count ;
 int del_timer (int *) ;
 int ktime_add (int ,void*) ;
 void* ktime_get () ;
 void* ktime_sub (void*,void*) ;
 scalar_t__ ktime_to_ns (void*) ;
 int split_counters (unsigned int*,unsigned int*) ;
 int trace_wakeup_source_deactivate (int ,unsigned int) ;
 int update_prevent_sleep_time (struct wakeup_source*,void*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;
 int wakeup_count_wait_queue ;

__attribute__((used)) static void wakeup_source_deactivate(struct wakeup_source *ws)
{
 unsigned int cnt, inpr, cec;
 ktime_t duration;
 ktime_t now;

 ws->relax_count++;
 if (ws->relax_count != ws->active_count) {
  ws->relax_count--;
  return;
 }

 ws->active = 0;

 now = ktime_get();
 duration = ktime_sub(now, ws->last_time);
 ws->total_time = ktime_add(ws->total_time, duration);
 if (ktime_to_ns(duration) > ktime_to_ns(ws->max_time))
  ws->max_time = duration;

 ws->last_time = now;
 del_timer(&ws->timer);
 ws->timer_expires = 0;

 if (ws->autosleep_enabled)
  update_prevent_sleep_time(ws, now);





 cec = atomic_add_return(MAX_IN_PROGRESS, &combined_event_count);
 trace_wakeup_source_deactivate(ws->name, cec);

 split_counters(&cnt, &inpr);
 if (!inpr && waitqueue_active(&wakeup_count_wait_queue))
  wake_up(&wakeup_count_wait_queue);
}
