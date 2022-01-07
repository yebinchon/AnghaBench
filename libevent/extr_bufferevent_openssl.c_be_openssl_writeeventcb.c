
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bev; } ;
struct bufferevent_openssl {TYPE_1__ bev; } ;
typedef int evutil_socket_t ;


 int BEV_EVENT_TIMEOUT ;
 int BEV_EVENT_WRITING ;
 short EV_TIMEOUT ;
 int bufferevent_decref_and_unlock_ (int *) ;
 int bufferevent_incref_and_lock_ (int *) ;
 int bufferevent_run_eventcb_ (int *,int,int ) ;
 int consider_writing (struct bufferevent_openssl*) ;

__attribute__((used)) static void
be_openssl_writeeventcb(evutil_socket_t fd, short what, void *ptr)
{
 struct bufferevent_openssl *bev_ssl = ptr;
 bufferevent_incref_and_lock_(&bev_ssl->bev.bev);
 if (what == EV_TIMEOUT) {
  bufferevent_run_eventcb_(&bev_ssl->bev.bev,
      BEV_EVENT_TIMEOUT|BEV_EVENT_WRITING, 0);
 } else {
  consider_writing(bev_ssl);
 }
 bufferevent_decref_and_unlock_(&bev_ssl->bev.bev);
}
