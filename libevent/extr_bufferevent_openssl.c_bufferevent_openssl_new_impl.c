
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct bufferevent {int output; } ;
struct bufferevent_private {struct bufferevent bev; } ;
struct bufferevent_openssl {int old_state; int last_write; struct bufferevent_private bev; int * ssl; int outbuf_cb; struct bufferevent* underlying; } ;
typedef int evutil_socket_t ;
typedef enum bufferevent_ssl_state { ____Placeholder_bufferevent_ssl_state } bufferevent_ssl_state ;
typedef int SSL ;


 int BEV_OPT_CLOSE_ON_FREE ;
 int BEV_OPT_THREADSAFE ;
 int BEV_SUSPEND_FILT_READ ;
 int BUFFEREVENT_SSL_OPEN ;
 int EV_READ ;
 int EV_WRITE ;
 int SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER ;
 int SSL_free (int *) ;
 int SSL_set_mode (int *,int ) ;
 int be_openssl_auto_fd (struct bufferevent_openssl*,int ) ;
 int be_openssl_outbuf_cb ;
 scalar_t__ be_openssl_set_fd (struct bufferevent_openssl*,int,int ) ;
 int bufferevent_enable (struct bufferevent*,int) ;
 int bufferevent_enable_locking_ (struct bufferevent*,int *) ;
 int bufferevent_free (struct bufferevent*) ;
 int bufferevent_incref_ (struct bufferevent*) ;
 scalar_t__ bufferevent_init_common_ (struct bufferevent_private*,struct event_base*,int *,int) ;
 int bufferevent_init_generic_timeout_cbs_ (struct bufferevent*) ;
 int bufferevent_ops_openssl ;
 int bufferevent_setwatermark (struct bufferevent*,int,int ,int ) ;
 int bufferevent_suspend_read_ (struct bufferevent*,int ) ;
 int evbuffer_add_cb (int ,int ,struct bufferevent_openssl*) ;
 int init_bio_counts (struct bufferevent_openssl*) ;
 struct bufferevent_openssl* mm_calloc (int,int) ;

__attribute__((used)) static struct bufferevent *
bufferevent_openssl_new_impl(struct event_base *base,
    struct bufferevent *underlying,
    evutil_socket_t fd,
    SSL *ssl,
    enum bufferevent_ssl_state state,
    int options)
{
 struct bufferevent_openssl *bev_ssl = ((void*)0);
 struct bufferevent_private *bev_p = ((void*)0);
 int tmp_options = options & ~BEV_OPT_THREADSAFE;


 if (underlying != ((void*)0) && fd >= 0)
  goto err;

 if (!(bev_ssl = mm_calloc(1, sizeof(struct bufferevent_openssl))))
  goto err;

 bev_p = &bev_ssl->bev;

 if (bufferevent_init_common_(bev_p, base,
  &bufferevent_ops_openssl, tmp_options) < 0)
  goto err;



 SSL_set_mode(ssl, SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER);

 bev_ssl->underlying = underlying;
 bev_ssl->ssl = ssl;

 bev_ssl->outbuf_cb = evbuffer_add_cb(bev_p->bev.output,
     be_openssl_outbuf_cb, bev_ssl);

 if (options & BEV_OPT_THREADSAFE)
  bufferevent_enable_locking_(&bev_ssl->bev.bev, ((void*)0));

 if (underlying) {
  bufferevent_init_generic_timeout_cbs_(&bev_ssl->bev.bev);
  bufferevent_incref_(underlying);
 }

 bev_ssl->old_state = state;
 bev_ssl->last_write = -1;

 init_bio_counts(bev_ssl);

 fd = be_openssl_auto_fd(bev_ssl, fd);
 if (be_openssl_set_fd(bev_ssl, state, fd))
  goto err;

 if (underlying) {
  bufferevent_setwatermark(underlying, EV_READ, 0, 0);
  bufferevent_enable(underlying, EV_READ|EV_WRITE);
  if (state == BUFFEREVENT_SSL_OPEN)
   bufferevent_suspend_read_(underlying,
       BEV_SUSPEND_FILT_READ);
 }

 return &bev_ssl->bev.bev;
err:
 if (options & BEV_OPT_CLOSE_ON_FREE)
  SSL_free(ssl);
 if (bev_ssl) {
  bev_ssl->ssl = ((void*)0);
  bufferevent_free(&bev_ssl->bev.bev);
 }
 return ((void*)0);
}
