
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handle; } ;
typedef TYPE_1__ uv_write_t ;


 int ASSERT (int) ;
 int shutdown_cb ;
 int shutdown_req ;
 int uv_shutdown (int *,int ,int ) ;
 int write_cb_called ;
 TYPE_1__ write_req ;

__attribute__((used)) static void write_cb(uv_write_t* req, int status) {
  ASSERT(req == &write_req);
  uv_shutdown(&shutdown_req, req->handle, shutdown_cb);
  write_cb_called++;
}
