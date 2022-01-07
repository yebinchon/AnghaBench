
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct event {struct event_base* ev_base; } ;


 int event_debug_assert_is_setup_ (struct event const*) ;

struct event_base *
event_get_base(const struct event *ev)
{
 event_debug_assert_is_setup_(ev);
 return ev->ev_base;
}
