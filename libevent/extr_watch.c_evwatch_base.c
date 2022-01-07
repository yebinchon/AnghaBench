
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evwatch {struct event_base* base; } ;
struct event_base {int dummy; } ;



struct event_base *
evwatch_base(struct evwatch *watcher)
{
 return watcher->base;
}
