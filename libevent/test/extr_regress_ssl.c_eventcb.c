
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
typedef enum regress_openssl_type { ____Placeholder_regress_openssl_type } regress_openssl_type ;
typedef int X509 ;
typedef int SSL ;


 short BEV_EVENT_CONNECTED ;
 short BEV_EVENT_EOF ;
 short BEV_EVENT_ERROR ;
 short BEV_EVENT_TIMEOUT ;
 int REGRESS_OPENSSL_CLIENT ;
 int REGRESS_OPENSSL_CLIENT_WRITE ;
 int REGRESS_OPENSSL_FD ;
 int REGRESS_OPENSSL_FILTER ;
 int REGRESS_OPENSSL_FREED ;
 int REGRESS_OPENSSL_SERVER ;
 int * SSL_get_peer_certificate (int *) ;
 int TT_BLATHER (char*) ;
 int X509_free (int *) ;
 int bufferevent_free (struct bufferevent*) ;
 int bufferevent_get_output (struct bufferevent*) ;
 int bufferevent_openssl_check_fd (struct bufferevent*,int) ;
 int bufferevent_openssl_check_freed (struct bufferevent*) ;
 int * bufferevent_openssl_get_ssl (struct bufferevent*) ;
 int evbuffer_add_printf (int ,char*) ;
 int event_base_loopexit (int ,int *) ;
 int exit_base ;
 int got_close ;
 int got_error ;
 int got_timeout ;
 int n_connected ;
 scalar_t__ pending_connect_events ;
 scalar_t__ stop_when_connected ;
 int tt_assert (int *) ;

__attribute__((used)) static void
eventcb(struct bufferevent *bev, short what, void *ctx)
{
 X509 *peer_cert = ((void*)0);
 enum regress_openssl_type type;

 type = (enum regress_openssl_type)ctx;

 TT_BLATHER(("Got event %d", (int)what));
 if (what & BEV_EVENT_CONNECTED) {
  SSL *ssl;
  ++n_connected;
  ssl = bufferevent_openssl_get_ssl(bev);
  tt_assert(ssl);
  peer_cert = SSL_get_peer_certificate(ssl);
  if (type & REGRESS_OPENSSL_SERVER) {
   tt_assert(peer_cert == ((void*)0));
  } else {
   tt_assert(peer_cert != ((void*)0));
  }
  if (stop_when_connected) {
   if (--pending_connect_events == 0)
    event_base_loopexit(exit_base, ((void*)0));
  }

  if ((type & REGRESS_OPENSSL_CLIENT_WRITE) && (type & REGRESS_OPENSSL_CLIENT))
   evbuffer_add_printf(bufferevent_get_output(bev), "1\n");
 } else if (what & BEV_EVENT_EOF) {
  TT_BLATHER(("Got a good EOF"));
  ++got_close;
  if (type & REGRESS_OPENSSL_FD) {
   bufferevent_openssl_check_fd(bev, type & REGRESS_OPENSSL_FILTER);
  }
  if (type & REGRESS_OPENSSL_FREED) {
   bufferevent_openssl_check_freed(bev);
  }
  bufferevent_free(bev);
 } else if (what & BEV_EVENT_ERROR) {
  TT_BLATHER(("Got an error."));
  ++got_error;
  if (type & REGRESS_OPENSSL_FD) {
   bufferevent_openssl_check_fd(bev, type & REGRESS_OPENSSL_FILTER);
  }
  if (type & REGRESS_OPENSSL_FREED) {
   bufferevent_openssl_check_freed(bev);
  }
  bufferevent_free(bev);
 } else if (what & BEV_EVENT_TIMEOUT) {
  TT_BLATHER(("Got timeout."));
  ++got_timeout;
  if (type & REGRESS_OPENSSL_FD) {
   bufferevent_openssl_check_fd(bev, type & REGRESS_OPENSSL_FILTER);
  }
  if (type & REGRESS_OPENSSL_FREED) {
   bufferevent_openssl_check_freed(bev);
  }
  bufferevent_free(bev);
 }

end:
 if (peer_cert)
  X509_free(peer_cert);
}
