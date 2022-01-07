
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent_rate_limit_group {int read_suspended; int write_suspended; int members; int n_members; } ;
struct bufferevent_rate_limit {struct bufferevent_rate_limit_group* group; int refill_bucket_event; } ;
struct bufferevent_private {struct bufferevent_rate_limit* rate_limiting; } ;
struct bufferevent {int ev_base; } ;
struct TYPE_2__ {int next_in_group; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_SUSPEND_BW_GROUP ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EV_FINALIZE ;
 int LIST_INSERT_HEAD (int *,struct bufferevent_private*,int ) ;
 int LOCK_GROUP (struct bufferevent_rate_limit_group*) ;
 int UNLOCK_GROUP (struct bufferevent_rate_limit_group*) ;
 int bev_refill_callback_ ;
 int bufferevent_remove_from_rate_limit_group (struct bufferevent*) ;
 int bufferevent_suspend_read_ (struct bufferevent*,int ) ;
 int bufferevent_suspend_write_ (struct bufferevent*,int ) ;
 int event_assign (int *,int ,int,int ,int ,struct bufferevent_private*) ;
 struct bufferevent_rate_limit* mm_calloc (int,int) ;
 TYPE_1__* rate_limiting ;

int
bufferevent_add_to_rate_limit_group(struct bufferevent *bev,
    struct bufferevent_rate_limit_group *g)
{
 int wsuspend, rsuspend;
 struct bufferevent_private *bevp = BEV_UPCAST(bev);
 BEV_LOCK(bev);

 if (!bevp->rate_limiting) {
  struct bufferevent_rate_limit *rlim;
  rlim = mm_calloc(1, sizeof(struct bufferevent_rate_limit));
  if (!rlim) {
   BEV_UNLOCK(bev);
   return -1;
  }
  event_assign(&rlim->refill_bucket_event, bev->ev_base,
      -1, EV_FINALIZE, bev_refill_callback_, bevp);
  bevp->rate_limiting = rlim;
 }

 if (bevp->rate_limiting->group == g) {
  BEV_UNLOCK(bev);
  return 0;
 }
 if (bevp->rate_limiting->group)
  bufferevent_remove_from_rate_limit_group(bev);

 LOCK_GROUP(g);
 bevp->rate_limiting->group = g;
 ++g->n_members;
 LIST_INSERT_HEAD(&g->members, bevp, rate_limiting->next_in_group);

 rsuspend = g->read_suspended;
 wsuspend = g->write_suspended;

 UNLOCK_GROUP(g);

 if (rsuspend)
  bufferevent_suspend_read_(bev, BEV_SUSPEND_BW_GROUP);
 if (wsuspend)
  bufferevent_suspend_write_(bev, BEV_SUSPEND_BW_GROUP);

 BEV_UNLOCK(bev);
 return 0;
}
