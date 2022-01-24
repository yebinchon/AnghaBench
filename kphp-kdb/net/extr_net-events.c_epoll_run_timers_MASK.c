#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ wakeup_time; int h_idx; int /*<<< orphan*/  (* wakeup ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ event_timer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__** et_heap ; 
 scalar_t__ et_heap_size ; 
 int /*<<< orphan*/  pending_signals ; 
 scalar_t__ precise_now ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,double) ; 

int FUNC4 (void) {
  double wait_time;
  event_timer_t *et;
  if (!et_heap_size) {
    return 100000;
  }
  wait_time = et_heap[1]->wakeup_time - precise_now;
  if (wait_time > 0) {
    //do not remove this useful debug!
    FUNC3 (2, "%d event timers, next in %.3f seconds\n", et_heap_size, wait_time);
    return (int) (wait_time*1000) + 1;
  }
  while (et_heap_size > 0 && et_heap[1]->wakeup_time <= precise_now && !pending_signals) {
    et = et_heap[1];
    FUNC0 (et->h_idx == 1);
    FUNC1 (et);
    et->wakeup (et); 
  }
  return 0;
}