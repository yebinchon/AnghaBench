
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct ev_token_bucket_cfg {int tick_timeout; } ;
struct TYPE_2__ {scalar_t__ read_limit; scalar_t__ write_limit; } ;
struct bufferevent_rate_limit {int refill_bucket_event; TYPE_1__ limit; struct ev_token_bucket_cfg* cfg; } ;
struct bufferevent_private {struct bufferevent_rate_limit* rate_limiting; } ;
struct bufferevent {int ev_base; } ;
typedef int ev_uint32_t ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_SUSPEND_BW ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EVUTIL_ASSERT (scalar_t__) ;
 int EV_FINALIZE ;
 int bev_refill_callback_ ;
 int bufferevent_suspend_read_ (struct bufferevent*,int ) ;
 int bufferevent_suspend_write_ (struct bufferevent*,int ) ;
 int bufferevent_unsuspend_read_ (struct bufferevent*,int ) ;
 int bufferevent_unsuspend_write_ (struct bufferevent*,int ) ;
 int ev_token_bucket_get_tick_ (struct timeval*,struct ev_token_bucket_cfg*) ;
 int ev_token_bucket_init_ (TYPE_1__*,struct ev_token_bucket_cfg*,int ,int) ;
 int event_add (int *,int *) ;
 int event_assign (int *,int ,int,int ,int ,struct bufferevent_private*) ;
 int event_base_gettimeofday_cached (int ,struct timeval*) ;
 int event_del (int *) ;
 scalar_t__ event_initialized (int *) ;
 struct bufferevent_rate_limit* mm_calloc (int,int) ;

int
bufferevent_set_rate_limit(struct bufferevent *bev,
    struct ev_token_bucket_cfg *cfg)
{
 struct bufferevent_private *bevp = BEV_UPCAST(bev);
 int r = -1;
 struct bufferevent_rate_limit *rlim;
 struct timeval now;
 ev_uint32_t tick;
 int reinit = 0, suspended = 0;


 BEV_LOCK(bev);

 if (cfg == ((void*)0)) {
  if (bevp->rate_limiting) {
   rlim = bevp->rate_limiting;
   rlim->cfg = ((void*)0);
   bufferevent_unsuspend_read_(bev, BEV_SUSPEND_BW);
   bufferevent_unsuspend_write_(bev, BEV_SUSPEND_BW);
   if (event_initialized(&rlim->refill_bucket_event))
    event_del(&rlim->refill_bucket_event);
  }
  r = 0;
  goto done;
 }

 event_base_gettimeofday_cached(bev->ev_base, &now);
 tick = ev_token_bucket_get_tick_(&now, cfg);

 if (bevp->rate_limiting && bevp->rate_limiting->cfg == cfg) {

  r = 0;
  goto done;
 }
 if (bevp->rate_limiting == ((void*)0)) {
  rlim = mm_calloc(1, sizeof(struct bufferevent_rate_limit));
  if (!rlim)
   goto done;
  bevp->rate_limiting = rlim;
 } else {
  rlim = bevp->rate_limiting;
 }
 reinit = rlim->cfg != ((void*)0);

 rlim->cfg = cfg;
 ev_token_bucket_init_(&rlim->limit, cfg, tick, reinit);

 if (reinit) {
  EVUTIL_ASSERT(event_initialized(&rlim->refill_bucket_event));
  event_del(&rlim->refill_bucket_event);
 }
 event_assign(&rlim->refill_bucket_event, bev->ev_base,
     -1, EV_FINALIZE, bev_refill_callback_, bevp);

 if (rlim->limit.read_limit > 0) {
  bufferevent_unsuspend_read_(bev, BEV_SUSPEND_BW);
 } else {
  bufferevent_suspend_read_(bev, BEV_SUSPEND_BW);
  suspended=1;
 }
 if (rlim->limit.write_limit > 0) {
  bufferevent_unsuspend_write_(bev, BEV_SUSPEND_BW);
 } else {
  bufferevent_suspend_write_(bev, BEV_SUSPEND_BW);
  suspended = 1;
 }

 if (suspended)
  event_add(&rlim->refill_bucket_event, &cfg->tick_timeout);

 r = 0;

done:
 BEV_UNLOCK(bev);
 return r;
}
