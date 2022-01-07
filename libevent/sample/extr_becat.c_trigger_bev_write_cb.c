
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int out; } ;
struct bufferevent {int dummy; } ;


 int EV_WRITE ;
 int bufferevent_trigger (int ,int ,int ) ;

__attribute__((used)) static void trigger_bev_write_cb(struct bufferevent *bev, void *arg)
{
 struct context *ctx = arg;
 if (!ctx->out)
  return;
 bufferevent_trigger(ctx->out, EV_WRITE, 0);
}
