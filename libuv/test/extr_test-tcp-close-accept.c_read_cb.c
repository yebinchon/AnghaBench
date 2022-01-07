
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uv_tcp_t ;
struct TYPE_6__ {int * loop; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;


 int ASSERT (int) ;
 int addr ;
 int alloc_cb ;
 int close_cb ;
 int connect_cb ;
 unsigned int got_connections ;
 unsigned int pending_incoming ;
 int read_cb_called ;
 int tcp_check ;
 int tcp_check_req ;
 int * tcp_incoming ;
 int tcp_server ;
 int uv_close (int *,int ) ;
 scalar_t__ uv_read_start (TYPE_1__*,int ,void (*) (TYPE_1__*,int,int const*)) ;
 scalar_t__ uv_read_stop (TYPE_1__*) ;
 scalar_t__ uv_tcp_connect (int *,int *,struct sockaddr const*,int ) ;
 scalar_t__ uv_tcp_init (int *,int *) ;

__attribute__((used)) static void read_cb(uv_stream_t* stream, ssize_t nread, const uv_buf_t* buf) {
  uv_loop_t* loop;
  unsigned int i;

  pending_incoming = (uv_tcp_t*) stream - &tcp_incoming[0];
  ASSERT(pending_incoming < got_connections);
  ASSERT(0 == uv_read_stop(stream));
  ASSERT(1 == nread);

  loop = stream->loop;
  read_cb_called++;


  for (i = 0; i < got_connections; i++) {
    if (i != pending_incoming)
      uv_close((uv_handle_t*) &tcp_incoming[i], close_cb);
  }


  uv_close((uv_handle_t*) &tcp_server, close_cb);


  ASSERT(0 == uv_tcp_init(loop, &tcp_check));
  ASSERT(0 == uv_tcp_connect(&tcp_check_req,
                             &tcp_check,
                             (const struct sockaddr*) &addr,
                             connect_cb));
  ASSERT(0 == uv_read_start((uv_stream_t*) &tcp_check, alloc_cb, read_cb));
}
