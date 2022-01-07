
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct ev_token_bucket_cfg const ev_token_bucket_cfg ;
struct bufferevent_private {TYPE_1__* rate_limiting; } ;
struct bufferevent {int dummy; } ;
struct TYPE_2__ {struct ev_token_bucket_cfg const* cfg; } ;


 int BEV_LOCK (struct bufferevent const*) ;
 int BEV_UNLOCK (struct bufferevent const*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent const*) ;

const struct ev_token_bucket_cfg *
bufferevent_get_token_bucket_cfg(const struct bufferevent *bev) {
 struct bufferevent_private *bufev_private = BEV_UPCAST(bev);
 struct ev_token_bucket_cfg *cfg;

 BEV_LOCK(bev);

 if (bufev_private->rate_limiting) {
  cfg = bufev_private->rate_limiting->cfg;
 } else {
  cfg = ((void*)0);
 }

 BEV_UNLOCK(bev);

 return cfg;
}
