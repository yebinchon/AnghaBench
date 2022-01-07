
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wakeup_source {scalar_t__ wakeup_count; scalar_t__ expire_count; scalar_t__ relax_count; scalar_t__ active_count; scalar_t__ event_count; int max_time; int prevent_sleep_time; int total_time; } ;
struct TYPE_2__ {int lock; int wakeup_count; int expire_count; int relax_count; int active_count; int event_count; int max_time; void* prevent_sleep_time; void* total_time; } ;


 TYPE_1__ deleted_ws ;
 void* ktime_add (void*,int ) ;
 scalar_t__ ktime_compare (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void wakeup_source_record(struct wakeup_source *ws)
{
 unsigned long flags;

 spin_lock_irqsave(&deleted_ws.lock, flags);

 if (ws->event_count) {
  deleted_ws.total_time =
   ktime_add(deleted_ws.total_time, ws->total_time);
  deleted_ws.prevent_sleep_time =
   ktime_add(deleted_ws.prevent_sleep_time,
      ws->prevent_sleep_time);
  deleted_ws.max_time =
   ktime_compare(deleted_ws.max_time, ws->max_time) > 0 ?
    deleted_ws.max_time : ws->max_time;
  deleted_ws.event_count += ws->event_count;
  deleted_ws.active_count += ws->active_count;
  deleted_ws.relax_count += ws->relax_count;
  deleted_ws.expire_count += ws->expire_count;
  deleted_ws.wakeup_count += ws->wakeup_count;
 }

 spin_unlock_irqrestore(&deleted_ws.lock, flags);
}
