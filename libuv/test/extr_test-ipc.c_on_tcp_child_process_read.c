
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_6__ {int base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_7__ {int tcp_write_req; } ;


 int ASSERT (int) ;
 scalar_t__ UV_EOF ;
 int abort () ;
 TYPE_5__ conn ;
 int free (int ) ;
 scalar_t__ memcmp (char*,int ,scalar_t__) ;
 int on_pipe_read_called ;
 int printf (char*,char*) ;
 int tcp_conn_read_cb_called ;
 int tcp_connection_write_cb ;
 TYPE_1__ uv_buf_init (char*,int) ;
 char* uv_strerror (scalar_t__) ;
 int uv_write (int *,int *,TYPE_1__*,int,int ) ;

__attribute__((used)) static void on_tcp_child_process_read(uv_stream_t* tcp,
                                      ssize_t nread,
                                      const uv_buf_t* buf) {
  uv_buf_t outbuf;
  int r;

  if (nread < 0) {
    if (nread == UV_EOF) {
      free(buf->base);
      return;
    }

    printf("error recving on tcp connection: %s\n", uv_strerror(nread));
    abort();
  }

  ASSERT(nread > 0);
  ASSERT(memcmp("world\n", buf->base, nread) == 0);
  on_pipe_read_called++;
  free(buf->base);


  outbuf = uv_buf_init("hello again\n", 12);
  r = uv_write(&conn.tcp_write_req, tcp, &outbuf, 1, tcp_connection_write_cb);
  ASSERT(r == 0);

  tcp_conn_read_cb_called++;
}
