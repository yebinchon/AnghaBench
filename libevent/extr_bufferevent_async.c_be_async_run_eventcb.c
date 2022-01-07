
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int BEV_TRIG_DEFER_CALLBACKS ;
 int bufferevent_run_eventcb_ (struct bufferevent*,short,int) ;

__attribute__((used)) static inline void
be_async_run_eventcb(struct bufferevent *bev, short what, int options)
{ bufferevent_run_eventcb_(bev, what, options|BEV_TRIG_DEFER_CALLBACKS); }
