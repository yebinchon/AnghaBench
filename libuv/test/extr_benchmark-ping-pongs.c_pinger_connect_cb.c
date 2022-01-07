
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* handle; } ;
typedef TYPE_1__ uv_connect_t ;
typedef int pinger_t ;
struct TYPE_5__ {scalar_t__ data; } ;


 int ASSERT (int) ;
 int FATAL (char*) ;
 int buf_alloc ;
 int pinger_read_cb ;
 int pinger_write_ping (int *) ;
 scalar_t__ uv_read_start (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void pinger_connect_cb(uv_connect_t* req, int status) {
  pinger_t *pinger = (pinger_t*)req->handle->data;

  ASSERT(status == 0);

  pinger_write_ping(pinger);

  if (uv_read_start(req->handle, buf_alloc, pinger_read_cb)) {
    FATAL("uv_read_start failed");
  }
}
