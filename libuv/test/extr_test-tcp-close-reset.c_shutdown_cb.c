
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_3__ {int * handle; } ;
typedef TYPE_1__ uv_shutdown_t ;


 int ASSERT (int) ;
 scalar_t__ client_close ;
 int shutdown_cb_called ;
 int tcp_accepted ;
 int tcp_client ;

__attribute__((used)) static void shutdown_cb(uv_shutdown_t* req, int status) {
  if (client_close)
    ASSERT(req->handle == (uv_stream_t*) &tcp_client);
  else
    ASSERT(req->handle == (uv_stream_t*) &tcp_accepted);

  shutdown_cb_called++;
}
