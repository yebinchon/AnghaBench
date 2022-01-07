
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_context {scalar_t__ get; scalar_t__ server; } ;
struct bufferevent {int dummy; } ;


 short BEV_EVENT_CONNECTED ;
 int TT_BLATHER (char*) ;

__attribute__((used)) static void
wm_eventcb(struct bufferevent *bev, short what, void *arg)
{
 struct wm_context *ctx = arg;
 TT_BLATHER(("wm_eventcb-%s(%p): %i",
  ctx->server ? "server" : "client", bev, what));
 if (what & BEV_EVENT_CONNECTED) {
 } else {
  ctx->get = 0;
 }
}
