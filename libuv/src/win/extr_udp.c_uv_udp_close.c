
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ reqs_pending; int socket; } ;
typedef TYPE_1__ uv_udp_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;


 int INVALID_SOCKET ;
 int closesocket (int ) ;
 int uv__handle_closing (TYPE_1__*) ;
 int uv_udp_recv_stop (TYPE_1__*) ;
 int uv_want_endgame (int *,int *) ;

void uv_udp_close(uv_loop_t* loop, uv_udp_t* handle) {
  uv_udp_recv_stop(handle);
  closesocket(handle->socket);
  handle->socket = INVALID_SOCKET;

  uv__handle_closing(handle);

  if (handle->reqs_pending == 0) {
    uv_want_endgame(loop, (uv_handle_t*) handle);
  }
}
