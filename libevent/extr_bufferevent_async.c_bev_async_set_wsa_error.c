
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_overlapped {int overlapped; } ;
struct bufferevent {int input; } ;
typedef int evutil_socket_t ;
typedef int DWORD ;


 int FALSE ;
 int WSAGetOverlappedResult (int ,int *,int *,int ,int *) ;
 int evbuffer_overlapped_get_fd_ (int ) ;

__attribute__((used)) static void
bev_async_set_wsa_error(struct bufferevent *bev, struct event_overlapped *eo)
{
 DWORD bytes, flags;
 evutil_socket_t fd;

 fd = evbuffer_overlapped_get_fd_(bev->input);
 WSAGetOverlappedResult(fd, &eo->overlapped, &bytes, FALSE, &flags);
}
