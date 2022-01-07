
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;
typedef int SSL ;


 int BEV_OPT_DEFER_CALLBACKS ;
 int BUFFEREVENT_SSL_CONNECTING ;
 int HTTP_SSL_FILTER ;
 int * SSL_new (int ) ;
 struct bufferevent* bufferevent_openssl_filter_new (struct event_base*,struct bufferevent*,int *,int ,int) ;
 int bufferevent_openssl_set_allow_dirty_shutdown (struct bufferevent*,int) ;
 struct bufferevent* bufferevent_openssl_socket_new (struct event_base*,int ,int *,int ,int) ;
 struct bufferevent* bufferevent_socket_new (struct event_base*,int ,int) ;
 int get_ssl_ctx () ;

__attribute__((used)) static struct bufferevent *
create_bev(struct event_base *base, evutil_socket_t fd, int ssl_mask)
{
 int flags = BEV_OPT_DEFER_CALLBACKS;
 struct bufferevent *bev = ((void*)0);

 if (!ssl_mask) {
  bev = bufferevent_socket_new(base, fd, flags);
 } else {
 }

 return bev;
}
