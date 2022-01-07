
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct evconnlistener {int dummy; } ;
struct context {struct bufferevent* in; struct bufferevent* out; TYPE_2__* opts; } ;
struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;
typedef int buffer ;
struct TYPE_3__ {int keep; } ;
struct TYPE_4__ {TYPE_1__ extra; } ;


 int EVUTIL_ASSERT (int) ;
 int EV_READ ;
 int EV_WRITE ;
 int be_free (struct bufferevent**) ;
 struct bufferevent* be_new (struct context*,struct event_base*,int ) ;
 scalar_t__ bufferevent_enable (struct bufferevent*,int) ;
 int bufferevent_setcb (struct bufferevent*,int ,int ,int ,struct context*) ;
 int error (char*,...) ;
 int evconnlistener_disable (struct evconnlistener*) ;
 struct event_base* evconnlistener_get_base (struct evconnlistener*) ;
 int evutil_format_sockaddr_port_ (struct sockaddr*,char*,int) ;
 int info (char*,int ,int ) ;
 int read_cb ;
 int server_event_cb ;
 int write_cb ;

__attribute__((used)) static void
accept_cb(struct evconnlistener *listener, evutil_socket_t fd,
 struct sockaddr *sa, int socklen, void *arg)
{
 char buffer[128];
 struct context *ctx = arg;
 struct bufferevent *bev = ((void*)0);
 struct event_base *base = evconnlistener_get_base(listener);

 if (!ctx->opts->extra.keep)
  evconnlistener_disable(listener);

 info("Accepting %s (fd=%d)\n",
  evutil_format_sockaddr_port_(sa, buffer, sizeof(buffer)-1), fd);

 bev = be_new(ctx, base, fd);
 if (!bev) {
  error("Cannot make bufferevent for fd=%d\n", fd);
  goto err;
 }

 bufferevent_setcb(bev, read_cb, write_cb, server_event_cb, ctx);
 bufferevent_enable(bev, EV_READ|EV_WRITE);


 EVUTIL_ASSERT(!ctx->out);
 ctx->out = bev;

 if (bufferevent_enable(ctx->in, EV_READ)) {
  error("Cannot monitor EV_READ on input\n");
  goto err;
 }

 return;

err:
 be_free(&bev);
}
