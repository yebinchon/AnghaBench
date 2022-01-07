
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int MAKE_VALGRIND_HAPPY () ;
 int UV_RUN_DEFAULT ;
 int channel ;
 int send_zero_write ;
 int send_zero_write_cb ;
 int uv_buf_init (int ,int ) ;
 int uv_default_loop () ;
 scalar_t__ uv_is_closing (int *) ;
 int uv_is_readable (int *) ;
 int uv_is_writable (int *) ;
 int uv_pipe_init (int ,int *,int ) ;
 int uv_pipe_open (int *,int ) ;
 int uv_run (int ,int ) ;
 int uv_write (int *,int *,int *,int,int ) ;
 int write_req ;

int ipc_helper_send_zero(void) {
  int r;
  uv_buf_t zero_buf;

  zero_buf = uv_buf_init(0, 0);

  r = uv_pipe_init(uv_default_loop(), &channel, 0);
  ASSERT(r == 0);

  uv_pipe_open(&channel, 0);

  ASSERT(1 == uv_is_readable((uv_stream_t*) &channel));
  ASSERT(1 == uv_is_writable((uv_stream_t*) &channel));
  ASSERT(0 == uv_is_closing((uv_handle_t*) &channel));

  r = uv_write(&write_req,
               (uv_stream_t*)&channel,
               &zero_buf,
               1,
               send_zero_write_cb);

  ASSERT(r == 0);

  r = uv_run(uv_default_loop(), UV_RUN_DEFAULT);
  ASSERT(r == 0);

  ASSERT(send_zero_write == 1);

  MAKE_VALGRIND_HAPPY();
  return 0;
}
