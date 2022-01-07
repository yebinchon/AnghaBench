
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent {int ev_read; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_openssl {TYPE_1__ bev; int underlying; } ;
typedef scalar_t__ evutil_socket_t ;


 scalar_t__ event_get_fd (int *) ;
 scalar_t__ event_initialized (int *) ;

__attribute__((used)) static evutil_socket_t
be_openssl_auto_fd(struct bufferevent_openssl *bev_ssl, evutil_socket_t fd)
{
 if (!bev_ssl->underlying) {
  struct bufferevent *bev = &bev_ssl->bev.bev;
  if (event_initialized(&bev->ev_read) && fd < 0) {
   fd = event_get_fd(&bev->ev_read);
  }
 }
 return fd;
}
