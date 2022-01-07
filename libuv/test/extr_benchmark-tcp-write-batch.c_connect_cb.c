
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buf; int req; } ;
typedef TYPE_1__ write_req ;
typedef int uv_stream_t ;
struct TYPE_6__ {int * handle; } ;
typedef TYPE_2__ uv_connect_t ;


 int ASSERT (int) ;
 int NUM_WRITE_REQS ;
 int connect_cb_called ;
 int shutdown_cb ;
 int shutdown_req ;
 int tcp_client ;
 int uv_shutdown (int *,int *,int ) ;
 int uv_write (int *,int *,int *,int,int ) ;
 int write_cb ;
 TYPE_1__* write_reqs ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  write_req* w;
  int i;
  int r;

  ASSERT(req->handle == (uv_stream_t*)&tcp_client);

  for (i = 0; i < NUM_WRITE_REQS; i++) {
    w = &write_reqs[i];
    r = uv_write(&w->req, req->handle, &w->buf, 1, write_cb);
    ASSERT(r == 0);
  }

  r = uv_shutdown(&shutdown_req, req->handle, shutdown_cb);
  ASSERT(r == 0);

  connect_cb_called++;
}
