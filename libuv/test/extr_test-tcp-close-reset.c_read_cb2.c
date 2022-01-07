
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 scalar_t__ UV_EOF ;
 int tcp_client ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void read_cb2(uv_stream_t* stream, ssize_t nread, const uv_buf_t* buf) {
  ASSERT((uv_tcp_t*)stream == &tcp_client);
  if (nread == UV_EOF)
    uv_close((uv_handle_t*) stream, ((void*)0));
}
