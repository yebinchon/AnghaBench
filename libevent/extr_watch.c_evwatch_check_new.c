
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union evwatch_cb {int check; } ;
struct evwatch {int dummy; } ;
struct event_base {int dummy; } ;
typedef int evwatch_check_cb ;


 int EVWATCH_CHECK ;
 struct evwatch* evwatch_new (struct event_base*,union evwatch_cb,void*,int ) ;

struct evwatch *
evwatch_check_new(struct event_base *base, evwatch_check_cb callback, void *arg)
{
 union evwatch_cb cb = { .check = callback };
 return evwatch_new(base, cb, arg, EVWATCH_CHECK);
}
