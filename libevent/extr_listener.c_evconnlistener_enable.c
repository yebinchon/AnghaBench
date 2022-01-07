
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evconnlistener {int enabled; TYPE_1__* ops; scalar_t__ cb; } ;
struct TYPE_2__ {int (* enable ) (struct evconnlistener*) ;} ;


 int LOCK (struct evconnlistener*) ;
 int UNLOCK (struct evconnlistener*) ;
 int stub1 (struct evconnlistener*) ;

int
evconnlistener_enable(struct evconnlistener *lev)
{
 int r;
 LOCK(lev);
 lev->enabled = 1;
 if (lev->cb)
  r = lev->ops->enable(lev);
 else
  r = 0;
 UNLOCK(lev);
 return r;
}
