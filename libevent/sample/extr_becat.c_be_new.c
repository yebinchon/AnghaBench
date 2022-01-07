
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct event_base {int dummy; } ;
struct TYPE_5__ {int pkey; int cert; int ctx; } ;
struct context {TYPE_3__* opts; TYPE_2__ ssl; } ;
struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;
typedef enum bufferevent_ssl_state { ____Placeholder_bufferevent_ssl_state } bufferevent_ssl_state ;
struct TYPE_4__ {scalar_t__ ssl; } ;
struct TYPE_6__ {int max_read; TYPE_1__ extra; } ;
typedef int SSL ;


 int BEV_OPT_CLOSE_ON_FREE ;
 int BUFFEREVENT_SSL_ACCEPTING ;
 int BUFFEREVENT_SSL_CONNECTING ;
 int SSL_free (int *) ;
 int * SSL_new (int ) ;
 int SSL_use_PrivateKey (int *,int ) ;
 int SSL_use_certificate (int *,int ) ;
 struct bufferevent* bufferevent_openssl_socket_new (struct event_base*,int,int *,int,int) ;
 scalar_t__ bufferevent_set_max_single_read (struct bufferevent*,int) ;
 struct bufferevent* bufferevent_socket_new (struct event_base*,int,int) ;

__attribute__((used)) static struct bufferevent *
be_new(struct context *ctx, struct event_base *base, evutil_socket_t fd)
{
 SSL *ssl = ((void*)0);
 struct bufferevent *bev = ((void*)0);
 int flags = BEV_OPT_CLOSE_ON_FREE;
 enum bufferevent_ssl_state state = BUFFEREVENT_SSL_CONNECTING;

 if (fd != -1)
  state = BUFFEREVENT_SSL_ACCEPTING;

 if (ctx->opts->extra.ssl) {
  ssl = SSL_new(ctx->ssl.ctx);
  if (!ssl)
   goto err;
  if (SSL_use_certificate(ssl, ctx->ssl.cert) != 1)
   goto err;
  if (SSL_use_PrivateKey(ssl, ctx->ssl.pkey) != 1)
   goto err;
  bev = bufferevent_openssl_socket_new(base, fd, ssl, state, flags);
 } else {
  bev = bufferevent_socket_new(base, fd, flags);
 }
 if (ctx->opts->max_read != -1) {
  if (bufferevent_set_max_single_read(bev, ctx->opts->max_read))
   goto err;
 }
 return bev;
err:
 if (ssl)
  SSL_free(ssl);
 return ((void*)0);
}
