
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {scalar_t__ refcnt; } ;
struct bufferevent_filtered {int dummy; } ;
struct bufferevent {int dummy; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EVUTIL_ASSERT (int) ;
 int bufferevent_run_eventcb_ (struct bufferevent*,short,int ) ;
 struct bufferevent* downcast (struct bufferevent_filtered*) ;

__attribute__((used)) static void
be_filter_eventcb(struct bufferevent *underlying, short what, void *me_)
{
 struct bufferevent_filtered *bevf = me_;
 struct bufferevent *bev = downcast(bevf);
 struct bufferevent_private *bufev_private = BEV_UPCAST(bev);

 BEV_LOCK(bev);


 EVUTIL_ASSERT(bufev_private->refcnt >= 0);


 if (bufev_private->refcnt > 0) {


  bufferevent_run_eventcb_(bev, what, 0);
 }

 BEV_UNLOCK(bev);
}
