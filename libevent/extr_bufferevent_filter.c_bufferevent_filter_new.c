
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_filtered {void (* free_context ) (void*) ;void* outbuf_cb; void* inbuf_cb; struct bufferevent* underlying; void* context; void* process_out; void* process_in; int bev; } ;
struct bufferevent {int output; int input; int ev_base; } ;
typedef void* bufferevent_filter_cb ;


 int BEV_OPT_THREADSAFE ;
 int BEV_SUSPEND_FILT_READ ;
 int EVBUFFER_CB_ENABLED ;
 int EV_READ ;
 int EV_WRITE ;
 int be_filter_eventcb ;
 int be_filter_readcb ;
 int be_filter_writecb ;
 void* be_null_filter ;
 int bufferevent_enable (struct bufferevent*,int) ;
 int bufferevent_enable_locking_ (struct bufferevent*,int *) ;
 int bufferevent_filtered_inbuf_cb ;
 int bufferevent_filtered_outbuf_cb ;
 int bufferevent_incref_ (struct bufferevent*) ;
 scalar_t__ bufferevent_init_common_ (int *,int ,int *,int) ;
 int bufferevent_init_generic_timeout_cbs_ (struct bufferevent*) ;
 int bufferevent_ops_filter ;
 int bufferevent_setcb (struct bufferevent*,int ,int ,int ,struct bufferevent_filtered*) ;
 int bufferevent_suspend_read_ (struct bufferevent*,int ) ;
 struct bufferevent* downcast (struct bufferevent_filtered*) ;
 void* evbuffer_add_cb (int ,int ,struct bufferevent_filtered*) ;
 int evbuffer_cb_clear_flags (int ,void*,int ) ;
 struct bufferevent_filtered* mm_calloc (int,int) ;
 int mm_free (struct bufferevent_filtered*) ;

struct bufferevent *
bufferevent_filter_new(struct bufferevent *underlying,
         bufferevent_filter_cb input_filter,
         bufferevent_filter_cb output_filter,
         int options,
         void (*free_context)(void *),
         void *ctx)
{
 struct bufferevent_filtered *bufev_f;
 int tmp_options = options & ~BEV_OPT_THREADSAFE;

 if (!underlying)
  return ((void*)0);

 if (!input_filter)
  input_filter = be_null_filter;
 if (!output_filter)
  output_filter = be_null_filter;

 bufev_f = mm_calloc(1, sizeof(struct bufferevent_filtered));
 if (!bufev_f)
  return ((void*)0);

 if (bufferevent_init_common_(&bufev_f->bev, underlying->ev_base,
        &bufferevent_ops_filter, tmp_options) < 0) {
  mm_free(bufev_f);
  return ((void*)0);
 }
 if (options & BEV_OPT_THREADSAFE) {
  bufferevent_enable_locking_(downcast(bufev_f), ((void*)0));
 }

 bufev_f->underlying = underlying;

 bufev_f->process_in = input_filter;
 bufev_f->process_out = output_filter;
 bufev_f->free_context = free_context;
 bufev_f->context = ctx;

 bufferevent_setcb(bufev_f->underlying,
     be_filter_readcb, be_filter_writecb, be_filter_eventcb, bufev_f);

 bufev_f->inbuf_cb = evbuffer_add_cb(downcast(bufev_f)->input,
  bufferevent_filtered_inbuf_cb, bufev_f);
 evbuffer_cb_clear_flags(downcast(bufev_f)->input, bufev_f->inbuf_cb,
  EVBUFFER_CB_ENABLED);

 bufev_f->outbuf_cb = evbuffer_add_cb(downcast(bufev_f)->output,
    bufferevent_filtered_outbuf_cb, bufev_f);

 bufferevent_init_generic_timeout_cbs_(downcast(bufev_f));
 bufferevent_incref_(underlying);

 bufferevent_enable(underlying, EV_READ|EV_WRITE);
 bufferevent_suspend_read_(underlying, BEV_SUSPEND_FILT_READ);

 return downcast(bufev_f);
}
