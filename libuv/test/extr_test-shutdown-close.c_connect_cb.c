
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_handle_t ;
struct TYPE_4__ {scalar_t__ handle; } ;
typedef TYPE_1__ uv_connect_t ;


 int ASSERT (int) ;
 int close_cb ;
 int connect_cb_called ;
 TYPE_1__ connect_req ;
 int shutdown_cb ;
 int shutdown_req ;
 int uv_close (int *,int ) ;
 int uv_is_closing (int *) ;
 int uv_shutdown (int *,scalar_t__,int ) ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  int r;

  ASSERT(req == &connect_req);
  ASSERT(status == 0);

  r = uv_shutdown(&shutdown_req, req->handle, shutdown_cb);
  ASSERT(r == 0);
  ASSERT(0 == uv_is_closing((uv_handle_t*) req->handle));
  uv_close((uv_handle_t*) req->handle, close_cb);
  ASSERT(1 == uv_is_closing((uv_handle_t*) req->handle));

  connect_cb_called++;
}
