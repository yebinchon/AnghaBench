
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_pipe_t ;
typedef scalar_t__ uv_handle_type ;
typedef int uv_handle_t ;
struct TYPE_5__ {scalar_t__ base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 int BACKLOG ;
 scalar_t__ UV_EOF ;
 scalar_t__ UV_TCP ;
 scalar_t__ UV_UNKNOWN_HANDLE ;
 int abort () ;
 int channel ;
 int fprintf (int ,char*,int) ;
 int free (scalar_t__) ;
 int make_many_connections () ;
 scalar_t__ memcmp (char*,scalar_t__,scalar_t__) ;
 int on_connection ;
 int printf (char*,char*) ;
 int read_cb_called ;
 int remote_conn_accepted ;
 int stderr ;
 int tcp_server ;
 int tcp_server_listening ;
 int uv_accept (int *,int *) ;
 TYPE_1__ uv_buf_init (char*,int) ;
 int uv_close (int *,int *) ;
 int uv_default_loop () ;
 int uv_listen (int *,int ,int ) ;
 int uv_pipe_pending_count (int *) ;
 scalar_t__ uv_pipe_pending_type (int *) ;
 char* uv_strerror (scalar_t__) ;
 int uv_tcp_init (int ,int *) ;
 int uv_write (int *,int *,TYPE_1__*,int,int *) ;
 int write_req ;

__attribute__((used)) static void on_read(uv_stream_t* handle,
                    ssize_t nread,
                    const uv_buf_t* buf) {
  int r;
  uv_pipe_t* pipe;
  uv_handle_type pending;
  uv_buf_t outbuf;

  pipe = (uv_pipe_t*) handle;

  if (nread == 0) {

    free(buf->base);
    return;
  }

  if (nread < 0) {
    if (nread == UV_EOF) {
      free(buf->base);
      return;
    }

    printf("error recving on channel: %s\n", uv_strerror(nread));
    abort();
  }

  fprintf(stderr, "got %d bytes\n", (int)nread);

  pending = uv_pipe_pending_type(pipe);
  if (!tcp_server_listening) {
    ASSERT(1 == uv_pipe_pending_count(pipe));
    ASSERT(nread > 0 && buf->base && pending != UV_UNKNOWN_HANDLE);
    read_cb_called++;


    ASSERT(pending == UV_TCP);
    r = uv_tcp_init(uv_default_loop(), &tcp_server);
    ASSERT(r == 0);

    r = uv_accept((uv_stream_t*)pipe, (uv_stream_t*)&tcp_server);
    ASSERT(r == 0);

    r = uv_listen((uv_stream_t*)&tcp_server, BACKLOG, on_connection);
    ASSERT(r == 0);

    tcp_server_listening = 1;


    ASSERT(memcmp("hello\n", buf->base, nread) == 0);

    outbuf = uv_buf_init("world\n", 6);
    r = uv_write(&write_req, (uv_stream_t*)pipe, &outbuf, 1, ((void*)0));
    ASSERT(r == 0);


    make_many_connections();
  } else if (memcmp("accepted_connection\n", buf->base, nread) == 0) {

    ASSERT(0 == uv_pipe_pending_count(pipe));
    ASSERT(pending == UV_UNKNOWN_HANDLE);
    remote_conn_accepted = 1;
    uv_close((uv_handle_t*)&channel, ((void*)0));
  }

  free(buf->base);
}
