
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bev; } ;
struct bufferevent_openssl {TYPE_1__ bev; scalar_t__ allow_dirty_shutdown; } ;
struct bufferevent {int dummy; } ;


 short BEV_EVENT_CONNECTED ;
 short BEV_EVENT_EOF ;
 short BEV_EVENT_ERROR ;
 short BEV_EVENT_TIMEOUT ;
 int bufferevent_run_eventcb_ (int *,int,int ) ;

__attribute__((used)) static void
be_openssl_eventcb(struct bufferevent *bev_base, short what, void *ctx)
{
 struct bufferevent_openssl *bev_ssl = ctx;
 int event = 0;

 if (what & BEV_EVENT_EOF) {
  if (bev_ssl->allow_dirty_shutdown)
   event = BEV_EVENT_EOF;
  else
   event = BEV_EVENT_ERROR;
 } else if (what & BEV_EVENT_TIMEOUT) {

  event = what;
 } else if (what & BEV_EVENT_ERROR) {

  event = what;
 } else if (what & BEV_EVENT_CONNECTED) {


 }
 if (event)
  bufferevent_run_eventcb_(&bev_ssl->bev.bev, event, 0);
}
