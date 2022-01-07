
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int loop; } ;
typedef TYPE_1__ uv_stream_t ;


 int ASSERT (int) ;
 int alloc_cb ;
 int connection_cb_called ;
 int incoming ;
 int read_cb ;
 scalar_t__ uv_accept (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ uv_read_start (TYPE_1__*,int ,int ) ;
 scalar_t__ uv_tcp_init (int ,int *) ;

__attribute__((used)) static void connection_cb(uv_stream_t* tcp, int status) {
  ASSERT(status == 0);

  ASSERT(0 == uv_tcp_init(tcp->loop, &incoming));
  ASSERT(0 == uv_accept(tcp, (uv_stream_t*) &incoming));

  connection_cb_called++;
  ASSERT(0 == uv_read_start((uv_stream_t*) &incoming, alloc_cb, read_cb));
}
