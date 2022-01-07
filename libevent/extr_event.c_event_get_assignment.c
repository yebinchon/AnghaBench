
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct event {short ev_events; void* ev_arg; int ev_callback; int ev_fd; struct event_base* ev_base; } ;
typedef int evutil_socket_t ;
typedef int event_callback_fn ;


 int event_debug_assert_is_setup_ (struct event const*) ;

void
event_get_assignment(const struct event *event, struct event_base **base_out, evutil_socket_t *fd_out, short *events_out, event_callback_fn *callback_out, void **arg_out)
{
 event_debug_assert_is_setup_(event);

 if (base_out)
  *base_out = event->ev_base;
 if (fd_out)
  *fd_out = event->ev_fd;
 if (events_out)
  *events_out = event->ev_events;
 if (callback_out)
  *callback_out = event->ev_callback;
 if (arg_out)
  *arg_out = event->ev_arg;
}
