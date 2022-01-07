
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;


 int event_base_get_method (struct event_base*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int base_supports_et(struct event_base *base)
{
 return
  (!strcmp(event_base_get_method(base), "epoll") ||
  !strcmp(event_base_get_method(base), "epoll (with changelist)") ||
  !strcmp(event_base_get_method(base), "kqueue"));
}
