
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int LARGE_SIZE ;
 int MAKE_VALGRIND_HAPPY () ;
 int UV_RUN_DEFAULT ;
 int buffer ;
 int channel ;
 int closed_handle_write ;
 int large_buf ;
 int memset (int ,char,int ) ;
 int send_handle_and_close () ;
 int uv_buf_init (int ,int ) ;
 int uv_default_loop () ;
 scalar_t__ uv_is_closing (int *) ;
 int uv_is_readable (int *) ;
 int uv_is_writable (int *) ;
 int uv_pipe_init (int ,int *,int) ;
 int uv_pipe_open (int *,int ) ;
 int uv_run (int ,int ) ;
 scalar_t__ write_until_data_queued () ;

int ipc_helper_closed_handle(void) {
  int r;

  memset(buffer, '.', LARGE_SIZE);
  large_buf = uv_buf_init(buffer, LARGE_SIZE);

  r = uv_pipe_init(uv_default_loop(), &channel, 1);
  ASSERT(r == 0);

  uv_pipe_open(&channel, 0);

  ASSERT(1 == uv_is_readable((uv_stream_t*) &channel));
  ASSERT(1 == uv_is_writable((uv_stream_t*) &channel));
  ASSERT(0 == uv_is_closing((uv_handle_t*) &channel));

  if (write_until_data_queued() > 0)
    send_handle_and_close();

  r = uv_run(uv_default_loop(), UV_RUN_DEFAULT);
  ASSERT(r == 0);

  ASSERT(closed_handle_write == 1);

  MAKE_VALGRIND_HAPPY();
  return 0;
}
