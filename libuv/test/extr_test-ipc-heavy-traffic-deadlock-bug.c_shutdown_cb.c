
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ handle; } ;
typedef TYPE_1__ uv_shutdown_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int UV_ENOTCONN ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void shutdown_cb(uv_shutdown_t* req, int status) {
  ASSERT(status == 0 || status == UV_ENOTCONN);
  uv_close((uv_handle_t*) req->handle, ((void*)0));
}
