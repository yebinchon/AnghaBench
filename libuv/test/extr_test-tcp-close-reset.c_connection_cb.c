
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;


 int ASSERT (int) ;
 int alloc_cb ;
 int loop ;
 int read_cb ;
 int tcp_accepted ;
 scalar_t__ uv_accept (int *,int *) ;
 int uv_read_start (int *,int ,int ) ;
 scalar_t__ uv_tcp_init (int ,int *) ;

__attribute__((used)) static void connection_cb(uv_stream_t* server, int status) {
  ASSERT(status == 0);

  ASSERT(0 == uv_tcp_init(loop, &tcp_accepted));
  ASSERT(0 == uv_accept(server, (uv_stream_t*) &tcp_accepted));

  uv_read_start((uv_stream_t*) &tcp_accepted, alloc_cb, read_cb);
}
