
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_pipe_t ;


 int ASSERT (int) ;
 scalar_t__ TCP ;
 int buf_alloc ;
 int loop ;
 scalar_t__ malloc (int) ;
 int max_read_sockets ;
 int read_cb ;
 int read_sockets ;
 int * server ;
 scalar_t__ type ;
 int uv_accept (int *,int *) ;
 int uv_pipe_init (int ,int *,int ) ;
 int uv_read_start (int *,int ,int ) ;
 int uv_tcp_init (int ,int *) ;

__attribute__((used)) static void connection_cb(uv_stream_t* s, int status) {
  uv_stream_t* stream;
  int r;

  ASSERT(server == s);
  ASSERT(status == 0);

  if (type == TCP) {
    stream = (uv_stream_t*)malloc(sizeof(uv_tcp_t));
    r = uv_tcp_init(loop, (uv_tcp_t*)stream);
    ASSERT(r == 0);
  } else {
    stream = (uv_stream_t*)malloc(sizeof(uv_pipe_t));
    r = uv_pipe_init(loop, (uv_pipe_t*)stream, 0);
    ASSERT(r == 0);
  }

  r = uv_accept(s, stream);
  ASSERT(r == 0);

  r = uv_read_start(stream, buf_alloc, read_cb);
  ASSERT(r == 0);

  read_sockets++;
  max_read_sockets++;
}
