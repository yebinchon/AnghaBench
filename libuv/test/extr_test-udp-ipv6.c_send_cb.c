
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handle; } ;
typedef TYPE_1__ uv_udp_send_t ;


 int ASSERT (int) ;
 int CHECK_HANDLE (int ) ;
 int CHECK_REQ (TYPE_1__*) ;
 int send_cb_called ;

__attribute__((used)) static void send_cb(uv_udp_send_t* req, int status) {
  CHECK_REQ(req);
  CHECK_HANDLE(req->handle);
  ASSERT(status == 0);
  send_cb_called++;
}
