
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_timer {scalar_t__ h_idx; int wakeup; int wakeup_time; } ;
struct udp_target {struct event_timer flush_timer; } ;


 int assert (int) ;
 int flush_gateway ;
 int insert_event_timer (struct event_timer*) ;
 int precise_now ;

void start_flush_timer (struct udp_target *S) {
  struct event_timer *ev = &S->flush_timer;
  ev->wakeup_time = precise_now;
  ev->wakeup = flush_gateway;
  assert (!ev->h_idx);
  ev->h_idx = 0;
  insert_event_timer (ev);
}
