
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uv_tcp_t ;
struct TYPE_8__ {int loop; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int channel ;
 int close_cb ;
 int conn_notify_req ;
 int * malloc (int) ;
 int on_read_alloc ;
 int on_tcp_child_process_read ;
 int tcp_server ;
 int uv_accept (TYPE_1__*,TYPE_1__*) ;
 int uv_buf_init (char*,int) ;
 int uv_close (int *,int ) ;
 int uv_read_start (TYPE_1__*,int ,int ) ;
 int uv_tcp_init (int ,int *) ;
 int uv_write2 (int *,TYPE_1__*,int *,int,TYPE_1__*,int *) ;

__attribute__((used)) static void ipc_on_connection_tcp_conn(uv_stream_t* server, int status) {
  int r;
  uv_buf_t buf;
  uv_tcp_t* conn;

  ASSERT(status == 0);
  ASSERT((uv_stream_t*)&tcp_server == server);

  conn = malloc(sizeof(*conn));
  ASSERT(conn);

  r = uv_tcp_init(server->loop, conn);
  ASSERT(r == 0);

  r = uv_accept(server, (uv_stream_t*)conn);
  ASSERT(r == 0);


  buf = uv_buf_init("hello\n", 6);
  r = uv_write2(&conn_notify_req, (uv_stream_t*)&channel, &buf, 1,
    (uv_stream_t*)conn, ((void*)0));
  ASSERT(r == 0);

  r = uv_read_start((uv_stream_t*) conn,
                    on_read_alloc,
                    on_tcp_child_process_read);
  ASSERT(r == 0);

  uv_close((uv_handle_t*)conn, close_cb);
}
