
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handle; } ;
typedef TYPE_1__ uv_connect_t ;


 int ASSERT (int) ;
 int connect_cb_called ;
 TYPE_1__ connect_req ;
 int shutdown_cb ;
 int shutdown_req ;
 int uv_shutdown (int *,int ,int ) ;

__attribute__((used)) static void connect_and_shutdown(uv_connect_t* req, int status) {
  ASSERT(req == &connect_req);
  ASSERT(status == 0);
  uv_shutdown(&shutdown_req, req->handle, shutdown_cb);
  connect_cb_called++;
}
