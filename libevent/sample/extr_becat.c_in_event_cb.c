
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct context {int out; int * in; TYPE_2__* opts; } ;
struct bufferevent {int dummy; } ;
struct TYPE_3__ {int ssl; } ;
struct TYPE_4__ {TYPE_1__ extra; } ;


 int be_free (int *) ;
 int event_cb_ (struct bufferevent*,short,int ,int) ;

__attribute__((used)) static void in_event_cb(struct bufferevent *bev, short what, void *arg)
{
 struct context *ctx = arg;
 if (!event_cb_(bev, what, ctx->opts->extra.ssl, 1))
  return;

 ctx->in = ((void*)0);
 be_free(&ctx->out);
}
