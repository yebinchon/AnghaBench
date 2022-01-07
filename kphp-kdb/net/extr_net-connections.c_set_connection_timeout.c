
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wakeup_time; int wakeup; } ;
struct connection {TYPE_1__ timer; int flags; } ;


 int C_ALARM ;
 int conn_timer_wakeup_gateway ;
 int insert_event_timer (TYPE_1__*) ;
 scalar_t__ precise_now ;
 int remove_event_timer (TYPE_1__*) ;

int set_connection_timeout (struct connection *c, double timeout) {
  c->timer.wakeup = conn_timer_wakeup_gateway;
  c->flags &= ~C_ALARM;
  if (timeout > 0) {
    c->timer.wakeup_time = precise_now + timeout;
    return insert_event_timer (&c->timer);
  } else {
    c->timer.wakeup_time = 0;
    return remove_event_timer (&c->timer);
  }
}
