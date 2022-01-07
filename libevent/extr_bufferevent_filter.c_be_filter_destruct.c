
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_filtered {scalar_t__ outbuf_cb; scalar_t__ inbuf_cb; int context; int (* free_context ) (int ) ;} ;
struct bufferevent {int output; int input; } ;


 int EVUTIL_ASSERT (struct bufferevent_filtered*) ;
 int evbuffer_remove_cb_entry (int ,scalar_t__) ;
 int stub1 (int ) ;
 struct bufferevent_filtered* upcast (struct bufferevent*) ;

__attribute__((used)) static void
be_filter_destruct(struct bufferevent *bev)
{
 struct bufferevent_filtered *bevf = upcast(bev);
 EVUTIL_ASSERT(bevf);
 if (bevf->free_context)
  bevf->free_context(bevf->context);

 if (bevf->inbuf_cb)
  evbuffer_remove_cb_entry(bev->input, bevf->inbuf_cb);

 if (bevf->outbuf_cb)
  evbuffer_remove_cb_entry(bev->output, bevf->outbuf_cb);
}
