
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct event_base {int dummy; } ;
struct TYPE_3__ {int output; } ;
struct TYPE_4__ {TYPE_1__ bev; } ;
struct bufferevent_pair {TYPE_2__ bev; } ;


 int be_pair_outbuf_cb ;
 int bufferevent_free (int ) ;
 scalar_t__ bufferevent_init_common_ (TYPE_2__*,struct event_base*,int *,int) ;
 int bufferevent_init_generic_timeout_cbs_ (TYPE_1__*) ;
 int bufferevent_ops_pair ;
 int downcast (struct bufferevent_pair*) ;
 int evbuffer_add_cb (int ,int ,struct bufferevent_pair*) ;
 struct bufferevent_pair* mm_calloc (int,int) ;
 int mm_free (struct bufferevent_pair*) ;

__attribute__((used)) static struct bufferevent_pair *
bufferevent_pair_elt_new(struct event_base *base,
    int options)
{
 struct bufferevent_pair *bufev;
 if (! (bufev = mm_calloc(1, sizeof(struct bufferevent_pair))))
  return ((void*)0);
 if (bufferevent_init_common_(&bufev->bev, base, &bufferevent_ops_pair,
  options)) {
  mm_free(bufev);
  return ((void*)0);
 }
 if (!evbuffer_add_cb(bufev->bev.bev.output, be_pair_outbuf_cb, bufev)) {
  bufferevent_free(downcast(bufev));
  return ((void*)0);
 }

 bufferevent_init_generic_timeout_cbs_(&bufev->bev.bev);

 return bufev;
}
