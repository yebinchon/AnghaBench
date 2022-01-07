
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_cb_info {scalar_t__ n_added; scalar_t__ n_deleted; } ;
struct evbuffer {int dummy; } ;
struct bufferevent_pair {struct bufferevent_pair* partner; } ;


 int be_pair_transfer (int ,int ,int ) ;
 scalar_t__ be_pair_wants_to_talk (struct bufferevent_pair*,struct bufferevent_pair*) ;
 int decref_and_unlock (int ) ;
 int downcast (struct bufferevent_pair*) ;
 int incref_and_lock (int ) ;

__attribute__((used)) static void
be_pair_outbuf_cb(struct evbuffer *outbuf,
    const struct evbuffer_cb_info *info, void *arg)
{
 struct bufferevent_pair *bev_pair = arg;
 struct bufferevent_pair *partner = bev_pair->partner;

 incref_and_lock(downcast(bev_pair));

 if (info->n_added > info->n_deleted && partner) {


  if (be_pair_wants_to_talk(bev_pair, partner)) {
   be_pair_transfer(downcast(bev_pair), downcast(partner), 0);
  }
 }

 decref_and_unlock(downcast(bev_pair));
}
