
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_handle_t ;
struct TYPE_3__ {int * handle; } ;
typedef TYPE_1__ uv_connect_t ;


 int ASSERT (int) ;
 int UV_ECONNREFUSED ;
 scalar_t__ close_cb_calls ;
 int connect_cb_calls ;
 int on_close ;
 int tcp ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void on_connect_with_close(uv_connect_t *req, int status) {
  ASSERT((uv_stream_t*) &tcp == req->handle);
  ASSERT(status == UV_ECONNREFUSED);
  connect_cb_calls++;

  ASSERT(close_cb_calls == 0);
  uv_close((uv_handle_t*)req->handle, on_close);
}
