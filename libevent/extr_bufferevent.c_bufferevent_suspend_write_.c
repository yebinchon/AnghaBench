
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent_private {int write_suspended; } ;
struct bufferevent {TYPE_1__* be_ops; } ;
typedef int bufferevent_suspend_flags ;
struct TYPE_2__ {int (* disable ) (struct bufferevent*,int ) ;} ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EV_WRITE ;
 int stub1 (struct bufferevent*,int ) ;

void
bufferevent_suspend_write_(struct bufferevent *bufev, bufferevent_suspend_flags what)
{
 struct bufferevent_private *bufev_private = BEV_UPCAST(bufev);
 BEV_LOCK(bufev);
 if (!bufev_private->write_suspended)
  bufev->be_ops->disable(bufev, EV_WRITE);
 bufev_private->write_suspended |= what;
 BEV_UNLOCK(bufev);
}
