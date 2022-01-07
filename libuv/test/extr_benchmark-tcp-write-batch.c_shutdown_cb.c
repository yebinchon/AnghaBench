
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ write_queue_size; } ;
typedef TYPE_1__ uv_stream_t ;
struct TYPE_5__ {TYPE_1__* handle; } ;
typedef TYPE_2__ uv_shutdown_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int close_cb ;
 int free (int ) ;
 int shutdown_cb_called ;
 int tcp_client ;
 int uv_close (int *,int ) ;
 int write_reqs ;

__attribute__((used)) static void shutdown_cb(uv_shutdown_t* req, int status) {
  ASSERT(req->handle == (uv_stream_t*)&tcp_client);
  ASSERT(req->handle->write_queue_size == 0);

  uv_close((uv_handle_t*)req->handle, close_cb);
  free(write_reqs);

  shutdown_cb_called++;
}
