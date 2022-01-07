
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 scalar_t__ UV_EINVAL ;
 scalar_t__ UV_ENOTCONN ;
 int close_cb ;
 int shutdown_before_close ;
 int shutdown_cb ;
 int shutdown_req ;
 int tcp_server ;
 int uv_close (int *,int *) ;
 scalar_t__ uv_shutdown (int *,int *,int ) ;
 scalar_t__ uv_tcp_close_reset (int *,int ) ;

__attribute__((used)) static void do_close(uv_tcp_t* handle) {
  if (shutdown_before_close == 1) {
    ASSERT(0 == uv_shutdown(&shutdown_req, (uv_stream_t*) handle, shutdown_cb));
    ASSERT(UV_EINVAL == uv_tcp_close_reset(handle, close_cb));
  } else {
    ASSERT(0 == uv_tcp_close_reset(handle, close_cb));
    ASSERT(UV_ENOTCONN == uv_shutdown(&shutdown_req, (uv_stream_t*) handle, shutdown_cb));
  }

  uv_close((uv_handle_t*) &tcp_server, ((void*)0));
}
