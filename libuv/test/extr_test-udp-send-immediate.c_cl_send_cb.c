
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; } ;
typedef TYPE_1__ uv_udp_send_t ;


 int ASSERT (int) ;
 int CHECK_HANDLE (int ) ;
 int cl_send_cb_called ;

__attribute__((used)) static void cl_send_cb(uv_udp_send_t* req, int status) {
  ASSERT(req != ((void*)0));
  ASSERT(status == 0);
  CHECK_HANDLE(req->handle);

  cl_send_cb_called++;
}
