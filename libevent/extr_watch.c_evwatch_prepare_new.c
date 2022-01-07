
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union evwatch_cb {int prepare; } ;
struct evwatch {int dummy; } ;
struct event_base {int dummy; } ;
typedef int evwatch_prepare_cb ;


 int EVWATCH_PREPARE ;
 struct evwatch* evwatch_new (struct event_base*,union evwatch_cb,void*,int ) ;

struct evwatch *
evwatch_prepare_new(struct event_base *base, evwatch_prepare_cb callback, void *arg)
{
 union evwatch_cb cb = { .prepare = callback };
 return evwatch_new(base, cb, arg, EVWATCH_PREPARE);
}
