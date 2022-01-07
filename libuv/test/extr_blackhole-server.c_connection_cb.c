
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int loop; } ;
typedef TYPE_1__ uv_stream_t ;
struct TYPE_9__ {int handle; } ;
typedef TYPE_2__ conn_rec ;


 int ASSERT (int) ;
 int alloc_cb ;
 TYPE_2__* malloc (int) ;
 int read_cb ;
 int tcp_server ;
 int uv_accept (TYPE_1__*,TYPE_1__*) ;
 int uv_read_start (TYPE_1__*,int ,int ) ;
 int uv_tcp_init (int ,int *) ;

__attribute__((used)) static void connection_cb(uv_stream_t* stream, int status) {
  conn_rec* conn;
  int r;

  ASSERT(status == 0);
  ASSERT(stream == (uv_stream_t*)&tcp_server);

  conn = malloc(sizeof *conn);
  ASSERT(conn != ((void*)0));

  r = uv_tcp_init(stream->loop, &conn->handle);
  ASSERT(r == 0);

  r = uv_accept(stream, (uv_stream_t*)&conn->handle);
  ASSERT(r == 0);

  r = uv_read_start((uv_stream_t*)&conn->handle, alloc_cb, read_cb);
  ASSERT(r == 0);
}
