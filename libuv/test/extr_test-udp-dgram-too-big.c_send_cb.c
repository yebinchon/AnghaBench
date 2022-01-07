
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ handle; } ;
typedef TYPE_1__ uv_udp_send_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int CHECK_HANDLE (scalar_t__) ;
 int CHECK_REQ (TYPE_1__*) ;
 int UV_EMSGSIZE ;
 int close_cb ;
 int send_cb_called ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void send_cb(uv_udp_send_t* req, int status) {
  CHECK_REQ(req);
  CHECK_HANDLE(req->handle);

  ASSERT(status == UV_EMSGSIZE);

  uv_close((uv_handle_t*)req->handle, close_cb);
  send_cb_called++;
}
