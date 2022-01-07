
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * handle; } ;
typedef TYPE_1__ uv_write_t ;
typedef int uv_stream_t ;


 int ASSERT (int) ;
 scalar_t__ close_cb_called ;
 int tcp_client ;
 int write_cb_called ;

__attribute__((used)) static void write_cb(uv_write_t* req, int status) {

  ASSERT(close_cb_called == 0);
  ASSERT(req->handle == (uv_stream_t*)&tcp_client);
  write_cb_called++;
}
