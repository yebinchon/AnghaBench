
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ handle; } ;
typedef TYPE_1__ uv_shutdown_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int close_cb ;
 TYPE_1__ req1 ;
 int shutdown_cb_called ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void shutdown_cb(uv_shutdown_t* req, int status) {
  ASSERT(req == &req1);
  ASSERT(status == 0);
  shutdown_cb_called++;
  uv_close((uv_handle_t*) req->handle, close_cb);
}
