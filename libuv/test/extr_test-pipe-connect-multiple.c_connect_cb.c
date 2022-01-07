
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* handle; } ;
typedef TYPE_2__ uv_connect_t ;
struct TYPE_4__ {int loop; } ;


 int ASSERT (int) ;
 scalar_t__ NUM_CLIENTS ;
 scalar_t__ connect_cb_called ;
 scalar_t__ connection_cb_called ;
 int uv_stop (int ) ;

__attribute__((used)) static void connect_cb(uv_connect_t* connect_req, int status) {
  ASSERT(status == 0);
  if (++connect_cb_called == NUM_CLIENTS &&
      connection_cb_called == NUM_CLIENTS) {
    uv_stop(connect_req->handle->loop);
  }
}
