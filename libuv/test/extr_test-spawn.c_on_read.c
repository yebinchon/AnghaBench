
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 scalar_t__ UV_EOF ;
 int close_cb ;
 int output_used ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void on_read(uv_stream_t* tcp, ssize_t nread, const uv_buf_t* buf) {
  if (nread > 0) {
    output_used += nread;
  } else if (nread < 0) {
    ASSERT(nread == UV_EOF);
    uv_close((uv_handle_t*)tcp, close_cb);
  }
}
