
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct event_callback {int dummy; } ;
struct event {struct event_callback ev_evcallback; } ;
struct bufferevent_private {scalar_t__ refcnt; TYPE_4__* rate_limiting; struct event_callback deferred; } ;
struct TYPE_7__ {struct event_callback ev_evcallback; } ;
struct TYPE_6__ {struct event_callback ev_evcallback; } ;
struct bufferevent {int ev_base; int output; int input; TYPE_3__ ev_write; TYPE_2__ ev_read; TYPE_1__* be_ops; } ;
struct TYPE_8__ {struct event refill_bucket_event; } ;
struct TYPE_5__ {int (* unlink ) (struct bufferevent*) ;} ;


 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EVUTIL_ASSERT (int) ;
 int MAX_CBS ;
 int bufferevent_finalize_cb_ ;
 scalar_t__ evbuffer_get_callbacks_ (int ,struct event_callback**,int) ;
 int event_callback_finalize_many_ (int ,int,struct event_callback**,int ) ;
 scalar_t__ event_initialized (struct event*) ;
 int stub1 (struct bufferevent*) ;

int
bufferevent_decref_and_unlock_(struct bufferevent *bufev)
{
 struct bufferevent_private *bufev_private = BEV_UPCAST(bufev);
 int n_cbs = 0;

 struct event_callback *cbs[16];

 EVUTIL_ASSERT(bufev_private->refcnt > 0);

 if (--bufev_private->refcnt) {
  BEV_UNLOCK(bufev);
  return 0;
 }

 if (bufev->be_ops->unlink)
  bufev->be_ops->unlink(bufev);



 cbs[0] = &bufev->ev_read.ev_evcallback;
 cbs[1] = &bufev->ev_write.ev_evcallback;
 cbs[2] = &bufev_private->deferred;
 n_cbs = 3;
 if (bufev_private->rate_limiting) {
  struct event *e = &bufev_private->rate_limiting->refill_bucket_event;
  if (event_initialized(e))
   cbs[n_cbs++] = &e->ev_evcallback;
 }
 n_cbs += evbuffer_get_callbacks_(bufev->input, cbs+n_cbs, 16 -n_cbs);
 n_cbs += evbuffer_get_callbacks_(bufev->output, cbs+n_cbs, 16 -n_cbs);

 event_callback_finalize_many_(bufev->ev_base, n_cbs, cbs,
     bufferevent_finalize_cb_);


 BEV_UNLOCK(bufev);

 return 1;
}
