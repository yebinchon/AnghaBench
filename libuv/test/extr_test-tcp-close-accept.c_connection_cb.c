
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uv_tcp_t ;
struct TYPE_6__ {int loop; } ;
typedef TYPE_1__ uv_stream_t ;


 unsigned int ARRAY_SIZE (int *) ;
 int ASSERT (int) ;
 int alloc_cb ;
 unsigned int got_connections ;
 int read_cb ;
 int * tcp_incoming ;
 int tcp_server ;
 scalar_t__ uv_accept (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ uv_read_start (TYPE_1__*,int ,int ) ;
 scalar_t__ uv_tcp_init (int ,int *) ;

__attribute__((used)) static void connection_cb(uv_stream_t* server, int status) {
  unsigned int i;
  uv_tcp_t* incoming;

  ASSERT(server == (uv_stream_t*) &tcp_server);


  if (got_connections == ARRAY_SIZE(tcp_incoming))
    return;


  incoming = &tcp_incoming[got_connections++];
  ASSERT(0 == uv_tcp_init(server->loop, incoming));
  ASSERT(0 == uv_accept(server, (uv_stream_t*) incoming));

  if (got_connections != ARRAY_SIZE(tcp_incoming))
    return;


  for (i = 0; i < ARRAY_SIZE(tcp_incoming); i++) {
    incoming = &tcp_incoming[i];
    ASSERT(0 == uv_read_start((uv_stream_t*) incoming, alloc_cb, read_cb));
  }
}
