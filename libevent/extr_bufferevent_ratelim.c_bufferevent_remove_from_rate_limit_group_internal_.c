
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bufferevent_rate_limit_group {int n_members; } ;
struct bufferevent_private {TYPE_1__* rate_limiting; } ;
struct bufferevent {int dummy; } ;
struct TYPE_4__ {int next_in_group; } ;
struct TYPE_3__ {struct bufferevent_rate_limit_group* group; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_SUSPEND_BW_GROUP ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int LIST_REMOVE (struct bufferevent_private*,int ) ;
 int LOCK_GROUP (struct bufferevent_rate_limit_group*) ;
 int UNLOCK_GROUP (struct bufferevent_rate_limit_group*) ;
 int bufferevent_unsuspend_read_ (struct bufferevent*,int ) ;
 int bufferevent_unsuspend_write_ (struct bufferevent*,int ) ;
 TYPE_2__* rate_limiting ;

int
bufferevent_remove_from_rate_limit_group_internal_(struct bufferevent *bev,
    int unsuspend)
{
 struct bufferevent_private *bevp = BEV_UPCAST(bev);
 BEV_LOCK(bev);
 if (bevp->rate_limiting && bevp->rate_limiting->group) {
  struct bufferevent_rate_limit_group *g =
      bevp->rate_limiting->group;
  LOCK_GROUP(g);
  bevp->rate_limiting->group = ((void*)0);
  --g->n_members;
  LIST_REMOVE(bevp, rate_limiting->next_in_group);
  UNLOCK_GROUP(g);
 }
 if (unsuspend) {
  bufferevent_unsuspend_read_(bev, BEV_SUSPEND_BW_GROUP);
  bufferevent_unsuspend_write_(bev, BEV_SUSPEND_BW_GROUP);
 }
 BEV_UNLOCK(bev);
 return 0;
}
