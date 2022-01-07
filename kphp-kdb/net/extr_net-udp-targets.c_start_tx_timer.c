
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_timer {scalar_t__ h_idx; int wakeup; scalar_t__ wakeup_time; } ;
struct udp_target {scalar_t__ tx_timeout; struct event_timer tx_timer; } ;


 int assert (int) ;
 int insert_event_timer (struct event_timer*) ;
 scalar_t__ precise_now ;
 int tx_gateway ;

void start_tx_timer (struct udp_target *S) {
  struct event_timer *ev = &S->tx_timer;
  ev->wakeup_time = precise_now + S->tx_timeout;
  ev->wakeup = tx_gateway;
  assert (!ev->h_idx);
  ev->h_idx = 0;
  insert_event_timer (ev);
}
