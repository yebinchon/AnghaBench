
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ wakeup_time; } ;
struct connection {TYPE_1__ timer; int flags; } ;


 int C_ALARM ;
 int remove_event_timer (TYPE_1__*) ;

int clear_connection_timeout (struct connection *c) {
  c->flags &= ~C_ALARM;
  c->timer.wakeup_time = 0;
  return remove_event_timer (&c->timer);
}
