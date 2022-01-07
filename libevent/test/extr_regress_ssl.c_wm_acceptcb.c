
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_context {struct bufferevent* bev; int wm_high; scalar_t__ server; int flags; } ;
struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct evconnlistener {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;
typedef int SSL ;


 int BUFFEREVENT_SSL_ACCEPTING ;
 int EV_READ ;
 int EV_WRITE ;
 int * SSL_new (int ) ;
 int SSL_use_PrivateKey (int *,int ) ;
 int SSL_use_certificate (int *,int ) ;
 int TT_BLATHER (char*) ;
 int bufferevent_enable (struct bufferevent*,int) ;
 struct bufferevent* bufferevent_openssl_socket_new (struct event_base*,int ,int *,int ,int ) ;
 int bufferevent_setcb (struct bufferevent*,int ,int *,int ,struct wm_context*) ;
 int bufferevent_setwatermark (struct bufferevent*,int,int ,int ) ;
 int evconnlistener_disable (struct evconnlistener*) ;
 struct event_base* evconnlistener_get_base (struct evconnlistener*) ;
 int get_ssl_ctx () ;
 int the_cert ;
 int the_key ;
 int wm_eventcb ;
 int wm_transfer ;

__attribute__((used)) static void
wm_acceptcb(struct evconnlistener *listener, evutil_socket_t fd,
    struct sockaddr *addr, int socklen, void *arg)
{
 struct wm_context *ctx = arg;
 struct bufferevent *bev;
 struct event_base *base = evconnlistener_get_base(listener);
 SSL *ssl = SSL_new(get_ssl_ctx());

 SSL_use_certificate(ssl, the_cert);
 SSL_use_PrivateKey(ssl, the_key);

 bev = bufferevent_openssl_socket_new(
  base, fd, ssl, BUFFEREVENT_SSL_ACCEPTING, ctx->flags);

 TT_BLATHER(("wm_transfer-%s(%p): accept",
  ctx->server ? "server" : "client", bev));

 bufferevent_setwatermark(bev, EV_READ, 0, ctx->wm_high);
 bufferevent_setcb(bev, wm_transfer, ((void*)0), wm_eventcb, ctx);
 bufferevent_enable(bev, EV_READ|EV_WRITE);
 ctx->bev = bev;


 evconnlistener_disable(listener);
}
