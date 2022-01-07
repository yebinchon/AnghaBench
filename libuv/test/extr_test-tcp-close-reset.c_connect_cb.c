
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_connect_t ;


 int ASSERT (int) ;
 int alloc_cb ;
 scalar_t__ client_close ;
 int connect_req ;
 int do_close (int *) ;
 int do_write (int *) ;
 int read_cb2 ;
 int tcp_client ;
 int uv_read_start (int *,int ,int ) ;

__attribute__((used)) static void connect_cb(uv_connect_t* conn_req, int status) {
  ASSERT(conn_req == &connect_req);
  uv_read_start((uv_stream_t*) &tcp_client, alloc_cb, read_cb2);
  do_write(&tcp_client);
  if (client_close)
    do_close(&tcp_client);
}
