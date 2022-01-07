
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; } ;
typedef TYPE_1__ uv_connect_t ;


 int ASSERT (int) ;
 int on_read_alloc ;
 int on_tcp_child_process_read ;
 int uv_read_start (int ,int ,int ) ;

__attribute__((used)) static void connect_child_process_cb(uv_connect_t* req, int status) {
  int r;

  ASSERT(status == 0);
  r = uv_read_start(req->handle, on_read_alloc, on_tcp_child_process_read);
  ASSERT(r == 0);
}
