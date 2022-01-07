
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {scalar_t__ refcnt; } ;
struct bufferevent_filtered {int inbuf_cb; scalar_t__ got_eof; } ;
struct bufferevent {int input; } ;
typedef enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;
typedef enum bufferevent_filter_result { ____Placeholder_bufferevent_filter_result } bufferevent_filter_result ;


 int BEV_FINISHED ;
 int BEV_NORMAL ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EVBUFFER_CB_ENABLED ;
 int EVUTIL_ASSERT (int) ;
 int EV_READ ;
 int be_filter_process_input (struct bufferevent_filtered*,int,int*) ;
 scalar_t__ be_readbuf_full (struct bufferevent_filtered*,int) ;
 int bufferevent_trigger_nolock_ (struct bufferevent*,int ,int ) ;
 struct bufferevent* downcast (struct bufferevent_filtered*) ;
 int evbuffer_cb_set_flags (int ,int ,int ) ;
 scalar_t__ evbuffer_get_length (int ) ;

__attribute__((used)) static void
be_filter_read_nolock_(struct bufferevent *underlying, void *me_)
{
 struct bufferevent_filtered *bevf = me_;
 enum bufferevent_filter_result res;
 enum bufferevent_flush_mode state;
 struct bufferevent *bufev = downcast(bevf);
 struct bufferevent_private *bufev_private = BEV_UPCAST(bufev);
 int processed_any = 0;


 EVUTIL_ASSERT(bufev_private->refcnt >= 0);


 if (bufev_private->refcnt > 0) {

  if (bevf->got_eof)
   state = BEV_FINISHED;
  else
   state = BEV_NORMAL;


  res = be_filter_process_input(bevf, state, &processed_any);
  (void)res;




  if (processed_any) {
   bufferevent_trigger_nolock_(bufev, EV_READ, 0);
   if (evbuffer_get_length(underlying->input) > 0 &&
    be_readbuf_full(bevf, state)) {





    evbuffer_cb_set_flags(bufev->input, bevf->inbuf_cb,
     EVBUFFER_CB_ENABLED);
   }
  }
 }
}
