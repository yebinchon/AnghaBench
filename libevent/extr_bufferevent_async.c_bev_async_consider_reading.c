
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t high; } ;
struct bufferevent {int enabled; int input; TYPE_1__ wm_read; } ;
struct TYPE_5__ {scalar_t__ read_suspended; scalar_t__ connecting; struct bufferevent bev; } ;
struct bufferevent_async {size_t read_in_progress; TYPE_2__ bev; scalar_t__ ok; int read_overlapped; } ;


 int BEV_EVENT_ERROR ;
 int EV_READ ;
 int be_async_run_eventcb (struct bufferevent*,int ,int ) ;
 int bev_async_add_read (struct bufferevent_async*) ;
 int bev_async_del_read (struct bufferevent_async*) ;
 int bufferevent_decref_ (struct bufferevent*) ;
 int bufferevent_decrement_read_buckets_ (TYPE_2__*,size_t) ;
 scalar_t__ bufferevent_get_read_max_ (TYPE_2__*) ;
 int bufferevent_incref_ (struct bufferevent*) ;
 size_t evbuffer_get_length (int ) ;
 scalar_t__ evbuffer_launch_read_ (int ,size_t,int *) ;

__attribute__((used)) static void
bev_async_consider_reading(struct bufferevent_async *beva)
{
 size_t cur_size;
 size_t read_high;
 size_t at_most;
 int limit;
 struct bufferevent *bev = &beva->bev.bev;



 if (beva->read_in_progress || beva->bev.connecting)
  return;
 if (!beva->ok || !(bev->enabled&EV_READ)) {
  bev_async_del_read(beva);
  return;
 }


 cur_size = evbuffer_get_length(bev->input);
 read_high = bev->wm_read.high;
 if (read_high) {
  if (cur_size >= read_high) {
   bev_async_del_read(beva);
   return;
  }
  at_most = read_high - cur_size;
 } else {
  at_most = 16384;
 }



 limit = (int)bufferevent_get_read_max_(&beva->bev);
 if (at_most >= (size_t)limit && limit >= 0)
  at_most = limit;

 if (beva->bev.read_suspended) {
  bev_async_del_read(beva);
  return;
 }

 bufferevent_incref_(bev);
 if (evbuffer_launch_read_(bev->input, at_most, &beva->read_overlapped)) {
  beva->ok = 0;
  be_async_run_eventcb(bev, BEV_EVENT_ERROR, 0);
  bufferevent_decref_(bev);
 } else {
  beva->read_in_progress = at_most;
  bufferevent_decrement_read_buckets_(&beva->bev, at_most);
  bev_async_add_read(beva);
 }

 return;
}
