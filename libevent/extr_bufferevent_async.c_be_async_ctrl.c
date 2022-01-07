
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union bufferevent_ctrl_data {void* fd; } ;
struct event_iocp_port {int dummy; } ;
struct TYPE_2__ {int options; } ;
struct bufferevent_async {int ok; TYPE_1__ bev; } ;
struct bufferevent {int input; int output; int ev_base; } ;
typedef void* evutil_socket_t ;
typedef enum bufferevent_ctrl_op { ____Placeholder_bufferevent_ctrl_op } bufferevent_ctrl_op ;






 int BEV_OPT_CLOSE_ON_FREE ;
 void* EVUTIL_INVALID_SOCKET ;
 int GetLastError () ;
 int closesocket (void*) ;
 void* evbuffer_overlapped_get_fd_ (int ) ;
 int evbuffer_overlapped_set_fd_ (int ,void*) ;
 struct event_iocp_port* event_base_get_iocp_ (int ) ;
 int event_iocp_port_associate_ (struct event_iocp_port*,void*,int) ;
 int fatal_error (int ) ;
 struct bufferevent_async* upcast (struct bufferevent*) ;

__attribute__((used)) static int
be_async_ctrl(struct bufferevent *bev, enum bufferevent_ctrl_op op,
    union bufferevent_ctrl_data *data)
{
 switch (op) {
 case 130:
  data->fd = evbuffer_overlapped_get_fd_(bev->input);
  return 0;
 case 128: {
  struct bufferevent_async *bev_a = upcast(bev);
  struct event_iocp_port *iocp;

  if (data->fd == evbuffer_overlapped_get_fd_(bev->input))
   return 0;
  if (!(iocp = event_base_get_iocp_(bev->ev_base)))
   return -1;
  if (event_iocp_port_associate_(iocp, data->fd, 1) < 0) {
   if (fatal_error(GetLastError()))
    return -1;
  }
  evbuffer_overlapped_set_fd_(bev->input, data->fd);
  evbuffer_overlapped_set_fd_(bev->output, data->fd);
  bev_a->ok = data->fd >= 0;
  return 0;
 }
 case 131: {
  struct bufferevent_async *bev_a = upcast(bev);
  evutil_socket_t fd = evbuffer_overlapped_get_fd_(bev->input);
  if (fd != (evutil_socket_t)EVUTIL_INVALID_SOCKET &&
      (bev_a->bev.options & BEV_OPT_CLOSE_ON_FREE)) {
   closesocket(fd);
   evbuffer_overlapped_set_fd_(bev->input, EVUTIL_INVALID_SOCKET);
  }
  bev_a->ok = 0;
  return 0;
 }
 case 129:
 default:
  return -1;
 }
}
