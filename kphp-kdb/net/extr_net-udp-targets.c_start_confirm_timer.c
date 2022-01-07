
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_timer {scalar_t__ h_idx; int wakeup; scalar_t__ wakeup_time; } ;
struct udp_target {struct event_timer confirm_timer; } ;


 scalar_t__ CONFIRM_TIMEOUT ;
 int assert (int) ;
 int confirm_gateway ;
 int insert_event_timer (struct event_timer*) ;
 scalar_t__ precise_now ;

void start_confirm_timer (struct udp_target *S) {
  struct event_timer *ev = &S->confirm_timer;
  ev->wakeup_time = precise_now + CONFIRM_TIMEOUT;
  ev->wakeup = confirm_gateway;
  assert (!ev->h_idx);
  ev->h_idx = 0;
  insert_event_timer (ev);
}
