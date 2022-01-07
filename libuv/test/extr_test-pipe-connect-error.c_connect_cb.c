
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_handle_t ;
struct TYPE_3__ {scalar_t__ handle; } ;
typedef TYPE_1__ uv_connect_t ;


 int ASSERT (int) ;
 int UV_ENOENT ;
 int close_cb ;
 int connect_cb_called ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void connect_cb(uv_connect_t* connect_req, int status) {
  ASSERT(status == UV_ENOENT);
  uv_close((uv_handle_t*)connect_req->handle, close_cb);
  connect_cb_called++;
}
