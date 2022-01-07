
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ handle; } ;
typedef TYPE_1__ uv_write_t ;
typedef int uv_handle_t ;
struct TYPE_5__ {int conn; } ;


 int ASSERT (int) ;
 int channel ;
 int close_cb ;
 TYPE_3__ conn ;
 int tcp_conn_write_cb_called ;
 int tcp_server ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void tcp_connection_write_cb(uv_write_t* req, int status) {
  ASSERT((uv_handle_t*)&conn.conn == (uv_handle_t*)req->handle);
  uv_close((uv_handle_t*)req->handle, close_cb);
  uv_close((uv_handle_t*)&channel, close_cb);
  uv_close((uv_handle_t*)&tcp_server, close_cb);
  tcp_conn_write_cb_called++;
}
