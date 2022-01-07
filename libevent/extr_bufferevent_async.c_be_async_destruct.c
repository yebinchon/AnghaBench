
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {int options; } ;
struct bufferevent_async {int read_in_progress; int write_in_progress; } ;
struct bufferevent {int input; } ;
typedef scalar_t__ evutil_socket_t ;


 int BEV_OPT_CLOSE_ON_FREE ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EVUTIL_ASSERT (int) ;
 scalar_t__ EVUTIL_INVALID_SOCKET ;
 int bev_async_del_read (struct bufferevent_async*) ;
 int bev_async_del_write (struct bufferevent_async*) ;
 scalar_t__ evbuffer_overlapped_get_fd_ (int ) ;
 int evbuffer_overlapped_set_fd_ (int ,scalar_t__) ;
 int evutil_closesocket (scalar_t__) ;
 struct bufferevent_async* upcast (struct bufferevent*) ;

__attribute__((used)) static void
be_async_destruct(struct bufferevent *bev)
{
 struct bufferevent_async *bev_async = upcast(bev);
 struct bufferevent_private *bev_p = BEV_UPCAST(bev);
 evutil_socket_t fd;

 EVUTIL_ASSERT(!upcast(bev)->write_in_progress &&
   !upcast(bev)->read_in_progress);

 bev_async_del_read(bev_async);
 bev_async_del_write(bev_async);

 fd = evbuffer_overlapped_get_fd_(bev->input);
 if (fd != (evutil_socket_t)EVUTIL_INVALID_SOCKET &&
  (bev_p->options & BEV_OPT_CLOSE_ON_FREE)) {
  evutil_closesocket(fd);
  evbuffer_overlapped_set_fd_(bev->input, EVUTIL_INVALID_SOCKET);
 }
}
