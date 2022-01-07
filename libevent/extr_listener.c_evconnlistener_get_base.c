
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event_base {int dummy; } ;
struct evconnlistener {TYPE_1__* ops; } ;
struct TYPE_2__ {struct event_base* (* getbase ) (struct evconnlistener*) ;} ;


 int LOCK (struct evconnlistener*) ;
 int UNLOCK (struct evconnlistener*) ;
 struct event_base* stub1 (struct evconnlistener*) ;

struct event_base *
evconnlistener_get_base(struct evconnlistener *lev)
{
 struct event_base *base;
 LOCK(lev);
 base = lev->ops->getbase(lev);
 UNLOCK(lev);
 return base;
}
