
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct context {struct bufferevent* out; TYPE_2__* opts; } ;
struct bufferevent {int dummy; } ;
struct TYPE_3__ {int keep; int ssl; } ;
struct TYPE_4__ {TYPE_1__ extra; } ;


 int EVUTIL_ASSERT (int) ;
 int event_cb_ (struct bufferevent*,short,int ,int) ;

__attribute__((used)) static void server_event_cb(struct bufferevent *bev, short what, void *arg)
{
 struct context *ctx = arg;
 EVUTIL_ASSERT(bev == ctx->out);
 if (!event_cb_(bev, what, ctx->opts->extra.ssl, !ctx->opts->extra.keep))
  return;
 ctx->out = ((void*)0);
}
