
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {int options; short eventcb_pending; int errno_pending; } ;
struct bufferevent {int cbarg; int (* errorcb ) (struct bufferevent*,short,int ) ;} ;


 int BEV_OPT_DEFER_CALLBACKS ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EVUTIL_SOCKET_ERROR () ;
 int SCHEDULE_DEFERRED (struct bufferevent_private*) ;
 int stub1 (struct bufferevent*,short,int ) ;

void
bufferevent_run_eventcb_(struct bufferevent *bufev, short what, int options)
{

 struct bufferevent_private *p = BEV_UPCAST(bufev);
 if (bufev->errorcb == ((void*)0))
  return;
 if ((p->options|options) & BEV_OPT_DEFER_CALLBACKS) {
  p->eventcb_pending |= what;
  p->errno_pending = EVUTIL_SOCKET_ERROR();
  SCHEDULE_DEFERRED(p);
 } else {
  bufev->errorcb(bufev, what, bufev->cbarg);
 }
}
