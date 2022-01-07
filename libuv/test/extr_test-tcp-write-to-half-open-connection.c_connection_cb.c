
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int loop; } ;
typedef TYPE_1__ uv_stream_t ;
struct TYPE_10__ {char* base; int len; } ;
typedef TYPE_2__ uv_buf_t ;


 int ASSERT (int) ;
 int alloc_cb ;
 int read_cb ;
 int tcp_peer ;
 int tcp_server ;
 int uv_accept (TYPE_1__*,TYPE_1__*) ;
 int uv_read_start (TYPE_1__*,int ,int ) ;
 int uv_tcp_init (int ,int *) ;
 int uv_write (int *,TYPE_1__*,TYPE_2__*,int,int ) ;
 int write_cb ;
 int write_req ;

__attribute__((used)) static void connection_cb(uv_stream_t* server, int status) {
  int r;
  uv_buf_t buf;

  ASSERT(server == (uv_stream_t*)&tcp_server);
  ASSERT(status == 0);

  r = uv_tcp_init(server->loop, &tcp_peer);
  ASSERT(r == 0);

  r = uv_accept(server, (uv_stream_t*)&tcp_peer);
  ASSERT(r == 0);

  r = uv_read_start((uv_stream_t*)&tcp_peer, alloc_cb, read_cb);
  ASSERT(r == 0);

  buf.base = "hello\n";
  buf.len = 6;

  r = uv_write(&write_req, (uv_stream_t*)&tcp_peer, &buf, 1, write_cb);
  ASSERT(r == 0);
}
