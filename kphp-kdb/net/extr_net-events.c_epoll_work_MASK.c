#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 double a_idle_quotient ; 
 double a_idle_time ; 
 int FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 scalar_t__ et_heap_size ; 
 scalar_t__ ev_heap_size ; 
 double FUNC3 () ; 
 int now ; 
 scalar_t__ pending_signals ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 double tot_idle_time ; 

int FUNC5 (int timeout) {
  int res;
  int timeout2 = 10000;
  if (ev_heap_size || et_heap_size) {
    now = FUNC4 (0);
    FUNC3 ();
    do {
      FUNC2 ();
      timeout2 = FUNC1 ();
    } while ((timeout2 <= 0 || ev_heap_size) && !pending_signals);
  }
  if (pending_signals) {
    return 0;
  }

  double epoll_wait_start = FUNC3 ();

  res = FUNC0 (timeout < timeout2 ? timeout : timeout2);

  double epoll_wait_time = FUNC3 () - epoll_wait_start;
  tot_idle_time += epoll_wait_time;
  a_idle_time += epoll_wait_time;

  now = FUNC4 (0);
  static int prev_now = 0;
  if (now > prev_now && now < prev_now + 60) {
    while (prev_now < now) {
      a_idle_time *= 100.0 / 101;
      a_idle_quotient = a_idle_quotient * (100.0/101) + 1;
      prev_now++;
    }
  } else {
    prev_now = now;
  }

  FUNC1 ();
  return FUNC2();
}