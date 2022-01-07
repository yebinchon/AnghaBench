
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct context {int fout; } ;
struct bufferevent {int dummy; } ;


 struct evbuffer* bufferevent_get_input (struct bufferevent*) ;
 int evbuffer_write (struct evbuffer*,int ) ;
 int fileno (int ) ;

__attribute__((used)) static void read_cb(struct bufferevent *bev, void *arg)
{
 struct context *ctx = arg;
 struct evbuffer *in = bufferevent_get_input(bev);
 evbuffer_write(in, fileno(ctx->fout));
}
