
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_tcp_t ;
struct TYPE_5__ {int loop; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int * close_server_conn_cb ;
 int local_conn_accepted ;
 int * malloc (int) ;
 int tcp_server ;
 int uv_accept (TYPE_1__*,TYPE_1__*) ;
 int uv_close (int *,int *) ;
 int uv_tcp_init (int ,int *) ;

__attribute__((used)) static void on_connection(uv_stream_t* server, int status) {
  uv_tcp_t* conn;
  int r;

  if (!local_conn_accepted) {

    ASSERT(status == 0);
    ASSERT((uv_stream_t*)&tcp_server == server);

    conn = malloc(sizeof(*conn));
    ASSERT(conn);
    r = uv_tcp_init(server->loop, conn);
    ASSERT(r == 0);

    r = uv_accept(server, (uv_stream_t*)conn);
    ASSERT(r == 0);

    uv_close((uv_handle_t*)conn, close_server_conn_cb);
    uv_close((uv_handle_t*)server, ((void*)0));
    local_conn_accepted = 1;
  }
}
