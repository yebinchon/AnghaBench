
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; } ;
typedef TYPE_1__ uv_connect_t ;


 int ASSERT (int) ;
 int req1 ;
 int req2 ;
 int shutdown_cb ;
 int uv_shutdown (int *,int ,int ) ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  int r;

  ASSERT(status == 0);

  r = uv_shutdown(&req1, req->handle, shutdown_cb);
  ASSERT(r == 0);
  r = uv_shutdown(&req2, req->handle, shutdown_cb);
  ASSERT(r != 0);

}
