
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int close_cb ;
 int conn ;
 int shutdown_cb ;
 int shutdown_req ;
 int uv_buf_init (char*,int) ;
 int uv_close (int *,int ) ;
 int uv_shutdown (int *,int *,int ) ;
 int uv_write (int *,int *,int *,int,int ) ;
 int write_cb ;
 int write_req ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  uv_buf_t buf;
  int r;

  uv_close((uv_handle_t*)handle, close_cb);

  buf = uv_buf_init("TEST", 4);
  r = uv_write(&write_req, (uv_stream_t*)&conn, &buf, 1, write_cb);
  ASSERT(r == 0);

  r = uv_shutdown(&shutdown_req, (uv_stream_t*)&conn, shutdown_cb);
  ASSERT(r == 0);
}
