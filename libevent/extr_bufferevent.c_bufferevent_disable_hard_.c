
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent_private {scalar_t__ connecting; } ;
struct bufferevent {short enabled; TYPE_1__* be_ops; } ;
struct TYPE_2__ {scalar_t__ (* disable ) (struct bufferevent*,short) ;} ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 scalar_t__ stub1 (struct bufferevent*,short) ;

int
bufferevent_disable_hard_(struct bufferevent *bufev, short event)
{
 int r = 0;
 struct bufferevent_private *bufev_private = BEV_UPCAST(bufev);

 BEV_LOCK(bufev);
 bufev->enabled &= ~event;

 bufev_private->connecting = 0;
 if (bufev->be_ops->disable(bufev, event) < 0)
  r = -1;

 BEV_UNLOCK(bufev);
 return r;
}
