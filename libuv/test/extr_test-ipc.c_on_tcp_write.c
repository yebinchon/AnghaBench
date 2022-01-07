
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * handle; } ;
typedef TYPE_1__ uv_write_t ;
typedef int uv_stream_t ;


 int ASSERT (int) ;
 int tcp_connection ;
 int tcp_write_cb_called ;

__attribute__((used)) static void on_tcp_write(uv_write_t* req, int status) {
  ASSERT(status == 0);
  ASSERT(req->handle == (uv_stream_t*)&tcp_connection);
  tcp_write_cb_called++;
}
