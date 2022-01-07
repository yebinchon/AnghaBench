
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_handle_t ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 int close_cb ;
 int free (int ) ;
 scalar_t__ memcmp (char*,int ,scalar_t__) ;
 int on_pipe_read_called ;
 int stdin_pipe ;
 int stdout_pipe ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void on_pipe_read(uv_stream_t* tcp, ssize_t nread, const uv_buf_t* buf) {
  ASSERT(nread > 0);
  ASSERT(memcmp("hello world\n", buf->base, nread) == 0);
  on_pipe_read_called++;

  free(buf->base);

  uv_close((uv_handle_t*)&stdin_pipe, close_cb);
  uv_close((uv_handle_t*)&stdout_pipe, close_cb);
}
