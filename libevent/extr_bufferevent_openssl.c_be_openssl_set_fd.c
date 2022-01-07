
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_openssl {int state; int ssl; } ;
typedef int evutil_socket_t ;
typedef enum bufferevent_ssl_state { ____Placeholder_bufferevent_ssl_state } bufferevent_ssl_state ;





 int SSL_clear (int ) ;
 int SSL_set_accept_state (int ) ;
 int SSL_set_connect_state (int ) ;
 int set_handshake_callbacks (struct bufferevent_openssl*,int ) ;
 int set_open_callbacks (struct bufferevent_openssl*,int ) ;

__attribute__((used)) static int
be_openssl_set_fd(struct bufferevent_openssl *bev_ssl,
    enum bufferevent_ssl_state state, evutil_socket_t fd)
{
 bev_ssl->state = state;

 switch (state) {
 case 130:
  if (!SSL_clear(bev_ssl->ssl))
   return -1;
  SSL_set_accept_state(bev_ssl->ssl);
  if (set_handshake_callbacks(bev_ssl, fd) < 0)
   return -1;
  break;
 case 129:
  if (!SSL_clear(bev_ssl->ssl))
   return -1;
  SSL_set_connect_state(bev_ssl->ssl);
  if (set_handshake_callbacks(bev_ssl, fd) < 0)
   return -1;
  break;
 case 128:
  if (set_open_callbacks(bev_ssl, fd) < 0)
   return -1;
  break;
 default:
  return -1;
 }

 return 0;
}
