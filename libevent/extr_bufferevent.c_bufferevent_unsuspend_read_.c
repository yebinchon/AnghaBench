
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent_private {int read_suspended; } ;
struct bufferevent {int enabled; TYPE_1__* be_ops; } ;
typedef int bufferevent_suspend_flags ;
struct TYPE_2__ {int (* enable ) (struct bufferevent*,int) ;} ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EV_READ ;
 int stub1 (struct bufferevent*,int) ;

void
bufferevent_unsuspend_read_(struct bufferevent *bufev, bufferevent_suspend_flags what)
{
 struct bufferevent_private *bufev_private = BEV_UPCAST(bufev);
 BEV_LOCK(bufev);
 bufev_private->read_suspended &= ~what;
 if (!bufev_private->read_suspended && (bufev->enabled & EV_READ))
  bufev->be_ops->enable(bufev, EV_READ);
 BEV_UNLOCK(bufev);
}
