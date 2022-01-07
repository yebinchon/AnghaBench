
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_write_t ;
typedef int uv_stream_t ;
struct TYPE_5__ {int loop; } ;
typedef TYPE_1__ uv_pipe_t ;
typedef scalar_t__ uv_handle_type ;
typedef int uv_buf_t ;
union handles {int stream; int tcp; int pipe; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_6__ {TYPE_1__ channel; int write_req2; union handles recv2; int write_req; union handles recv; } ;


 int ASSERT (int) ;
 scalar_t__ UV_ECONNABORTED ;
 scalar_t__ UV_EOF ;
 scalar_t__ UV_NAMED_PIPE ;
 scalar_t__ UV_TCP ;
 int abort () ;
 TYPE_4__ ctx2 ;
 int read_cb_count ;
 int uv_accept (int *,int *) ;
 int uv_buf_init (char*,int) ;
 int uv_pipe_init (int ,int *,int ) ;
 scalar_t__ uv_pipe_pending_count (TYPE_1__*) ;
 scalar_t__ uv_pipe_pending_type (TYPE_1__*) ;
 int uv_tcp_init (int ,int *) ;
 int uv_write2 (int *,int *,int *,int,int *,int ) ;
 int write2_cb ;

__attribute__((used)) static void read_cb(uv_stream_t* handle,
                    ssize_t nread,
                    const uv_buf_t* rdbuf) {
  uv_buf_t wrbuf;
  uv_pipe_t* pipe;
  uv_handle_type pending;
  int r;
  union handles* recv;
  uv_write_t* write_req;

  if (nread == UV_EOF || nread == UV_ECONNABORTED) {
    return;
  }

  pipe = (uv_pipe_t*) handle;
  do {
    if (++read_cb_count == 2) {
      recv = &ctx2.recv;
      write_req = &ctx2.write_req;
    } else {
      recv = &ctx2.recv2;
      write_req = &ctx2.write_req2;
    }

    ASSERT(pipe == &ctx2.channel);
    ASSERT(nread >= 0);
    ASSERT(uv_pipe_pending_count(pipe) > 0);

    pending = uv_pipe_pending_type(pipe);
    ASSERT(pending == UV_NAMED_PIPE || pending == UV_TCP);

    if (pending == UV_NAMED_PIPE)
      r = uv_pipe_init(ctx2.channel.loop, &recv->pipe, 0);
    else if (pending == UV_TCP)
      r = uv_tcp_init(ctx2.channel.loop, &recv->tcp);
    else
      abort();
    ASSERT(r == 0);

    r = uv_accept(handle, &recv->stream);
    ASSERT(r == 0);

    wrbuf = uv_buf_init(".", 1);
    r = uv_write2(write_req,
                  (uv_stream_t*)&ctx2.channel,
                  &wrbuf,
                  1,
                  &recv->stream,
                  write2_cb);
    ASSERT(r == 0);
  } while (uv_pipe_pending_count(pipe) > 0);
}
