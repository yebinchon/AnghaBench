
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evbuffer_cb_info {int dummy; } ;
struct evbuffer {int dummy; } ;
struct bufferevent_filtered {TYPE_1__* underlying; int inbuf_cb; scalar_t__ got_eof; } ;
struct bufferevent {int input; } ;
typedef enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;
struct TYPE_2__ {int input; } ;


 int BEV_FINISHED ;
 int BEV_LOCK (struct bufferevent*) ;
 int BEV_NORMAL ;
 int BEV_UNLOCK (struct bufferevent*) ;
 int EVBUFFER_CB_ENABLED ;
 int be_filter_read_nolock_ (TYPE_1__*,struct bufferevent_filtered*) ;
 int be_readbuf_full (struct bufferevent_filtered*,int) ;
 struct bufferevent* downcast (struct bufferevent_filtered*) ;
 int evbuffer_cb_clear_flags (int ,int ,int ) ;
 scalar_t__ evbuffer_get_length (int ) ;

__attribute__((used)) static void
bufferevent_filtered_inbuf_cb(struct evbuffer *buf,
    const struct evbuffer_cb_info *cbinfo, void *arg)
{
 struct bufferevent_filtered *bevf = arg;
 enum bufferevent_flush_mode state;
 struct bufferevent *bev = downcast(bevf);

 BEV_LOCK(bev);

 if (bevf->got_eof)
  state = BEV_FINISHED;
 else
  state = BEV_NORMAL;


 if (!be_readbuf_full(bevf, state)) {




  evbuffer_cb_clear_flags(bev->input, bevf->inbuf_cb,
   EVBUFFER_CB_ENABLED);
  if (evbuffer_get_length(bevf->underlying->input) > 0)
   be_filter_read_nolock_(bevf->underlying, bevf);
 }

 BEV_UNLOCK(bev);
}
