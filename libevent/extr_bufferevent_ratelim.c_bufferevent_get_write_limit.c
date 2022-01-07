
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bufferevent_private {TYPE_2__* rate_limiting; } ;
struct bufferevent {int dummy; } ;
typedef int ev_ssize_t ;
struct TYPE_3__ {int write_limit; } ;
struct TYPE_4__ {TYPE_1__ limit; scalar_t__ cfg; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EV_SSIZE_MAX ;
 int bufferevent_update_buckets (struct bufferevent_private*) ;

ev_ssize_t
bufferevent_get_write_limit(struct bufferevent *bev)
{
 ev_ssize_t r;
 struct bufferevent_private *bevp;
 BEV_LOCK(bev);
 bevp = BEV_UPCAST(bev);
 if (bevp->rate_limiting && bevp->rate_limiting->cfg) {
  bufferevent_update_buckets(bevp);
  r = bevp->rate_limiting->limit.write_limit;
 } else {
  r = EV_SSIZE_MAX;
 }
 BEV_UNLOCK(bev);
 return r;
}
