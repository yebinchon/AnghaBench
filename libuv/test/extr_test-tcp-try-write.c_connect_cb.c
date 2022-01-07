
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_connect_t ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int UV_EAGAIN ;
 int bytes_written ;
 int client ;
 int close_cb ;
 int connect_cb_called ;
 int uv_buf_init (char*,int) ;
 int uv_close (int *,int ) ;
 int uv_try_write (int *,int *,int) ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  int r;
  uv_buf_t buf;
  ASSERT(status == 0);
  connect_cb_called++;

  do {
    buf = uv_buf_init("PING", 4);
    r = uv_try_write((uv_stream_t*) &client, &buf, 1);
    ASSERT(r > 0 || r == UV_EAGAIN);
    if (r > 0) {
      bytes_written += r;
      break;
    }
  } while (1);

  do {
    buf = uv_buf_init("", 0);
    r = uv_try_write((uv_stream_t*) &client, &buf, 1);
  } while (r != 0);
  uv_close((uv_handle_t*) &client, close_cb);
}
