
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_poll_t ;
typedef int uv_os_sock_t ;
typedef int uv_loop_t ;


 int uv_poll_init (int *,int *,int ) ;

int uv_poll_init_socket(uv_loop_t* loop, uv_poll_t* handle,
    uv_os_sock_t socket) {
  return uv_poll_init(loop, handle, socket);
}
