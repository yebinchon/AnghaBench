
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_handle_t ;
struct TYPE_3__ {scalar_t__ handle; } ;
typedef TYPE_1__ uv_connect_t ;


 int close_client_conn_cb ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  uv_close((uv_handle_t*)req->handle, close_client_conn_cb);
}
