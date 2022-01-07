
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bufferevent_private {int * read_watermarks_cb; } ;
struct TYPE_4__ {size_t low; size_t high; } ;
struct TYPE_3__ {size_t low; size_t high; } ;
struct bufferevent {int input; TYPE_2__ wm_read; TYPE_1__ wm_write; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EVBUFFER_CB_ENABLED ;
 int EVBUFFER_CB_NODEFER ;
 short EV_READ ;
 short EV_WRITE ;
 int bufferevent_inbuf_wm_cb ;
 int bufferevent_wm_suspend_read (struct bufferevent*) ;
 int bufferevent_wm_unsuspend_read (struct bufferevent*) ;
 int * evbuffer_add_cb (int ,int ,struct bufferevent*) ;
 int evbuffer_cb_clear_flags (int ,int *,int) ;
 int evbuffer_cb_set_flags (int ,int *,int) ;
 size_t evbuffer_get_length (int ) ;

void
bufferevent_setwatermark(struct bufferevent *bufev, short events,
    size_t lowmark, size_t highmark)
{
 struct bufferevent_private *bufev_private = BEV_UPCAST(bufev);

 BEV_LOCK(bufev);
 if (events & EV_WRITE) {
  bufev->wm_write.low = lowmark;
  bufev->wm_write.high = highmark;
 }

 if (events & EV_READ) {
  bufev->wm_read.low = lowmark;
  bufev->wm_read.high = highmark;

  if (highmark) {




   if (bufev_private->read_watermarks_cb == ((void*)0)) {
    bufev_private->read_watermarks_cb =
        evbuffer_add_cb(bufev->input,
          bufferevent_inbuf_wm_cb,
          bufev);
   }
   evbuffer_cb_set_flags(bufev->input,
          bufev_private->read_watermarks_cb,
          EVBUFFER_CB_ENABLED|EVBUFFER_CB_NODEFER);

   if (evbuffer_get_length(bufev->input) >= highmark)
    bufferevent_wm_suspend_read(bufev);
   else if (evbuffer_get_length(bufev->input) < highmark)
    bufferevent_wm_unsuspend_read(bufev);
  } else {

   if (bufev_private->read_watermarks_cb)
    evbuffer_cb_clear_flags(bufev->input,
        bufev_private->read_watermarks_cb,
        EVBUFFER_CB_ENABLED);
   bufferevent_wm_unsuspend_read(bufev);
  }
 }
 BEV_UNLOCK(bufev);
}
