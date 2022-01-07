
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {int options; int dns_request; } ;
struct bufferevent {int ev_read; } ;
typedef scalar_t__ evutil_socket_t ;


 int BEV_IS_SOCKET (struct bufferevent*) ;
 int BEV_OPT_CLOSE_ON_FREE ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EVUTIL_ASSERT (int ) ;
 int EVUTIL_CLOSESOCKET (scalar_t__) ;
 scalar_t__ event_get_fd (int *) ;
 int evutil_getaddrinfo_cancel_async_ (int ) ;

__attribute__((used)) static void
be_socket_destruct(struct bufferevent *bufev)
{
 struct bufferevent_private *bufev_p = BEV_UPCAST(bufev);
 evutil_socket_t fd;
 EVUTIL_ASSERT(BEV_IS_SOCKET(bufev));

 fd = event_get_fd(&bufev->ev_read);

 if ((bufev_p->options & BEV_OPT_CLOSE_ON_FREE) && fd >= 0)
  EVUTIL_CLOSESOCKET(fd);

 evutil_getaddrinfo_cancel_async_(bufev_p->dns_request);
}
