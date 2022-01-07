
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bufferevent {int enabled; int output; } ;
struct TYPE_3__ {scalar_t__ write_suspended; scalar_t__ connecting; struct bufferevent bev; } ;
struct bufferevent_async {size_t write_in_progress; TYPE_1__ bev; scalar_t__ ok; int write_overlapped; } ;


 int BEV_EVENT_ERROR ;
 int EV_WRITE ;
 int be_async_run_eventcb (struct bufferevent*,int ,int ) ;
 int bev_async_add_write (struct bufferevent_async*) ;
 int bev_async_del_write (struct bufferevent_async*) ;
 int bufferevent_decref_ (struct bufferevent*) ;
 int bufferevent_decrement_write_buckets_ (TYPE_1__*,size_t) ;
 scalar_t__ bufferevent_get_write_max_ (TYPE_1__*) ;
 int bufferevent_incref_ (struct bufferevent*) ;
 size_t evbuffer_get_length (int ) ;
 scalar_t__ evbuffer_launch_write_ (int ,size_t,int *) ;

__attribute__((used)) static void
bev_async_consider_writing(struct bufferevent_async *beva)
{
 size_t at_most;
 int limit;
 struct bufferevent *bev = &beva->bev.bev;



 if (beva->write_in_progress || beva->bev.connecting)
  return;
 if (!beva->ok || !(bev->enabled&EV_WRITE) ||
     !evbuffer_get_length(bev->output)) {
  bev_async_del_write(beva);
  return;
 }

 at_most = evbuffer_get_length(bev->output);



 limit = (int)bufferevent_get_write_max_(&beva->bev);
 if (at_most >= (size_t)limit && limit >= 0)
  at_most = limit;

 if (beva->bev.write_suspended) {
  bev_async_del_write(beva);
  return;
 }


 bufferevent_incref_(bev);
 if (evbuffer_launch_write_(bev->output, at_most,
     &beva->write_overlapped)) {
  bufferevent_decref_(bev);
  beva->ok = 0;
  be_async_run_eventcb(bev, BEV_EVENT_ERROR, 0);
 } else {
  beva->write_in_progress = at_most;
  bufferevent_decrement_write_buckets_(&beva->bev, at_most);
  bev_async_add_write(beva);
 }
}
