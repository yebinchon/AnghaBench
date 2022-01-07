
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
typedef int ssize_t ;


 int ASSERT (int) ;
 int UV_EOF ;
 int read_cb_called ;
 int uv_close (int *,int *) ;
 int uv_read_stop (int *) ;

__attribute__((used)) static void read_cb(uv_stream_t *handle, ssize_t nread, const uv_buf_t *buf) {
  switch (++read_cb_called) {
  case 1:
    ASSERT(nread == 1);
    uv_read_stop(handle);
    break;
  case 2:
    ASSERT(nread == UV_EOF);
    uv_close((uv_handle_t *) handle, ((void*)0));
    break;
  default:
    ASSERT(!"read_cb_called > 2");
  }
}
