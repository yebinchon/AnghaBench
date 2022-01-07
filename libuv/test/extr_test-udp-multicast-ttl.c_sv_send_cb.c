
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ handle; } ;
typedef TYPE_1__ uv_udp_send_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int CHECK_HANDLE (scalar_t__) ;
 int UV_ENETUNREACH ;
 int UV_EPERM ;
 int close_cb ;
 int sv_send_cb_called ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void sv_send_cb(uv_udp_send_t* req, int status) {
  ASSERT(req != ((void*)0));
  ASSERT(status == 0 || status == UV_ENETUNREACH || status == UV_EPERM);
  CHECK_HANDLE(req->handle);

  sv_send_cb_called++;

  uv_close((uv_handle_t*) req->handle, close_cb);
}
