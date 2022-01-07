
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {int options; int readcb_pending; } ;
struct bufferevent {int cbarg; int (* readcb ) (struct bufferevent*,int ) ;} ;


 int BEV_OPT_DEFER_CALLBACKS ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int SCHEDULE_DEFERRED (struct bufferevent_private*) ;
 int bufferevent_inbuf_wm_check (struct bufferevent*) ;
 int stub1 (struct bufferevent*,int ) ;

void
bufferevent_run_readcb_(struct bufferevent *bufev, int options)
{

 struct bufferevent_private *p = BEV_UPCAST(bufev);
 if (bufev->readcb == ((void*)0))
  return;
 if ((p->options|options) & BEV_OPT_DEFER_CALLBACKS) {
  p->readcb_pending = 1;
  SCHEDULE_DEFERRED(p);
 } else {
  bufev->readcb(bufev, bufev->cbarg);
  bufferevent_inbuf_wm_check(bufev);
 }
}
