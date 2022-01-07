
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_5__ {int loop; } ;
typedef TYPE_1__ uv_pipe_t ;
typedef scalar_t__ uv_handle_type ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
union handles {int stream; int tcp; int pipe; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_6__ {scalar_t__ expected_type; TYPE_1__ channel; union handles recv2; union handles recv; } ;


 int ASSERT (int) ;
 scalar_t__ UV_EOF ;
 scalar_t__ UV_NAMED_PIPE ;
 scalar_t__ UV_TCP ;
 int abort () ;
 TYPE_4__ ctx ;
 int recv_cb_count ;
 int uv_accept (int *,int *) ;
 int uv_close (int *,int *) ;
 int uv_pipe_init (int ,int *,int ) ;
 scalar_t__ uv_pipe_pending_count (TYPE_1__*) ;
 scalar_t__ uv_pipe_pending_type (TYPE_1__*) ;
 int uv_tcp_init (int ,int *) ;

__attribute__((used)) static void recv_cb(uv_stream_t* handle,
                    ssize_t nread,
                    const uv_buf_t* buf) {
  uv_handle_type pending;
  uv_pipe_t* pipe;
  int r;
  union handles* recv;

  pipe = (uv_pipe_t*) handle;
  ASSERT(pipe == &ctx.channel);

  do {
    if (++recv_cb_count == 1) {
      recv = &ctx.recv;
    } else {
      recv = &ctx.recv2;
    }






    if (nread == UV_EOF) {

      ASSERT(recv_cb_count == 2);
    } else {
      ASSERT(nread >= 0);
      ASSERT(uv_pipe_pending_count(pipe) > 0);

      pending = uv_pipe_pending_type(pipe);
      ASSERT(pending == ctx.expected_type);

      if (pending == UV_NAMED_PIPE)
        r = uv_pipe_init(ctx.channel.loop, &recv->pipe, 0);
      else if (pending == UV_TCP)
        r = uv_tcp_init(ctx.channel.loop, &recv->tcp);
      else
        abort();
      ASSERT(r == 0);

      r = uv_accept(handle, &recv->stream);
      ASSERT(r == 0);
    }
  } while (uv_pipe_pending_count(pipe) > 0);


  if (recv_cb_count == 2) {
    uv_close((uv_handle_t*)&ctx.channel, ((void*)0));
  }
}
