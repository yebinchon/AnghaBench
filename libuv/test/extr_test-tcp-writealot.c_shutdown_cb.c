
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ write_queue_size; } ;
typedef TYPE_1__ uv_tcp_t ;
struct TYPE_6__ {scalar_t__ handle; } ;
typedef TYPE_2__ uv_shutdown_t ;


 int ASSERT (int) ;
 scalar_t__ WRITES ;
 int shutdown_cb_called ;
 TYPE_2__ shutdown_req ;
 scalar_t__ write_cb_called ;

__attribute__((used)) static void shutdown_cb(uv_shutdown_t* req, int status) {
  uv_tcp_t* tcp;

  ASSERT(req == &shutdown_req);
  ASSERT(status == 0);

  tcp = (uv_tcp_t*)(req->handle);


  ASSERT(tcp->write_queue_size == 0);


  shutdown_cb_called++;


  ASSERT(write_cb_called == WRITES);
}
