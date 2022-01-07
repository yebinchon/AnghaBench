
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ wakeup_time; int h_idx; int (* wakeup ) (TYPE_1__*) ;} ;
typedef TYPE_1__ event_timer_t ;


 int assert (int) ;
 TYPE_1__** et_heap ;
 scalar_t__ et_heap_size ;
 int pending_signals ;
 scalar_t__ precise_now ;
 int remove_event_timer (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;
 int vkprintf (int,char*,scalar_t__,double) ;

int epoll_run_timers (void) {
  double wait_time;
  event_timer_t *et;
  if (!et_heap_size) {
    return 100000;
  }
  wait_time = et_heap[1]->wakeup_time - precise_now;
  if (wait_time > 0) {

    vkprintf (2, "%d event timers, next in %.3f seconds\n", et_heap_size, wait_time);
    return (int) (wait_time*1000) + 1;
  }
  while (et_heap_size > 0 && et_heap[1]->wakeup_time <= precise_now && !pending_signals) {
    et = et_heap[1];
    assert (et->h_idx == 1);
    remove_event_timer (et);
    et->wakeup (et);
  }
  return 0;
}
