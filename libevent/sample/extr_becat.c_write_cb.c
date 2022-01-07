
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int in; } ;
struct bufferevent {int dummy; } ;


 int bufferevent_get_input (int ) ;
 int bufferevent_write_buffer (struct bufferevent*,int ) ;

__attribute__((used)) static void write_cb(struct bufferevent *bev, void *arg)
{
 struct context *ctx = arg;
 bufferevent_write_buffer(bev, bufferevent_get_input(ctx->in));
}
