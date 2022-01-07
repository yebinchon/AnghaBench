
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int loop; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
struct TYPE_8__ {int conn; } ;


 int ASSERT (int) ;
 int channel ;
 int close_cb ;
 TYPE_6__ conn ;
 int conn_notify_req ;
 int conn_notify_write_cb ;
 int connection_accepted ;
 int tcp_server ;
 int uv_accept (TYPE_1__*,TYPE_1__*) ;
 int uv_buf_init (char*,int) ;
 int uv_close (int *,int ) ;
 int uv_tcp_init (int ,int *) ;
 int uv_write2 (int *,TYPE_1__*,int *,int,int *,int ) ;

__attribute__((used)) static void ipc_on_connection(uv_stream_t* server, int status) {
  int r;
  uv_buf_t buf;

  if (!connection_accepted) {




    ASSERT(status == 0);
    ASSERT((uv_stream_t*)&tcp_server == server);

    r = uv_tcp_init(server->loop, &conn.conn);
    ASSERT(r == 0);

    r = uv_accept(server, (uv_stream_t*)&conn.conn);
    ASSERT(r == 0);

    uv_close((uv_handle_t*)&conn.conn, close_cb);

    buf = uv_buf_init("accepted_connection\n", 20);
    r = uv_write2(&conn_notify_req, (uv_stream_t*)&channel, &buf, 1,
      ((void*)0), conn_notify_write_cb);
    ASSERT(r == 0);

    connection_accepted = 1;
  }
}
