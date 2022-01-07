
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; } ;
typedef TYPE_1__ uv_udp_send_t ;


 int ASSERT (int) ;
 int CHECK_HANDLE (int ) ;
 int alloc_cb ;
 int cl_recv_cb ;
 int cl_send_cb_called ;
 int uv_udp_recv_start (int ,int ,int ) ;

__attribute__((used)) static void cl_send_cb(uv_udp_send_t* req, int status) {
  int r;

  ASSERT(req != ((void*)0));
  ASSERT(status == 0);
  CHECK_HANDLE(req->handle);

  r = uv_udp_recv_start(req->handle, alloc_cb, cl_recv_cb);
  ASSERT(r == 0);

  cl_send_cb_called++;
}
