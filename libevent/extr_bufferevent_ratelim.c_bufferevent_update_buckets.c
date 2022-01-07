
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_4__ {int ev_base; } ;
struct bufferevent_private {TYPE_2__* rate_limiting; TYPE_1__ bev; } ;
struct TYPE_6__ {unsigned int last_updated; } ;
struct TYPE_5__ {int cfg; TYPE_3__ limit; } ;


 unsigned int ev_token_bucket_get_tick_ (struct timeval*,int ) ;
 int ev_token_bucket_update_ (TYPE_3__*,int ,unsigned int) ;
 int event_base_gettimeofday_cached (int ,struct timeval*) ;

__attribute__((used)) static inline void
bufferevent_update_buckets(struct bufferevent_private *bev)
{

 struct timeval now;
 unsigned tick;
 event_base_gettimeofday_cached(bev->bev.ev_base, &now);
 tick = ev_token_bucket_get_tick_(&now, bev->rate_limiting->cfg);
 if (tick != bev->rate_limiting->limit.last_updated)
  ev_token_bucket_update_(&bev->rate_limiting->limit,
      bev->rate_limiting->cfg, tick);
}
